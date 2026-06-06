import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/widgets/app_error_widget.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/utils/debouncer.dart';
import 'package:pulse/core/utils/validators.dart';
import 'package:pulse/core/widgets/app_button.dart';
import 'package:pulse/core/widgets/app_snack_bar.dart';
import 'package:pulse/core/widgets/app_text_field.dart';
import 'package:pulse/core/widgets/app_avatar_selector.dart';
import 'package:pulse/core/widgets/avatar_bottom_sheet.dart';
import 'package:pulse/core/widgets/field_label.dart';
import 'package:pulse/features/profile/bloc/edit_profile/edit_profile_bloc.dart';

class EditProfilePage extends StatefulWidget {
  final String userId;
  const EditProfilePage({super.key, required this.userId});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _displayNameController = TextEditingController();
  final _bioController = TextEditingController();
  final _debouncer = Debouncer(duration: const Duration(milliseconds: 500));
  bool _controllersInitialized = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _displayNameController.dispose();
    _bioController.dispose();
    _debouncer.dispose();
    super.dispose();
  }

  void _onUsernameChanged(String value) {
    _debouncer.run(() {
      if (!mounted) return;
      context.read<EditProfileBloc>().add(UsernameChanged(value));
    });
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    FocusScope.of(context).unfocus();
    context.read<EditProfileBloc>().add(const SubmitProfile());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: BlocConsumer<EditProfileBloc, EditProfileState>(
        listenWhen: (previous, current) {
          final pStatus = previous.mapOrNull(
            editing: (s) => s.submissionStatus,
          );
          final cStatus = current.mapOrNull(editing: (s) => s.submissionStatus);
          return pStatus != cStatus;
        },
        listener: (context, state) {
          state.mapOrNull(
            editing: (editingState) {
              if (editingState.submissionStatus ==
                      EditProfileSubmissionStatus.failure &&
                  editingState.submissionErrorMessage != null) {
                AppSnackBar.show(
                  context,
                  message: editingState.submissionErrorMessage!,
                  type: SnackBarType.error,
                );
              } else if (editingState.submissionStatus ==
                  EditProfileSubmissionStatus.success) {
                AppSnackBar.show(
                  context,
                  message: 'Profile updated successfully!',
                  type: SnackBarType.success,
                );
                context.read<AppUserBloc>().add(const ProfileUpdated());
                context.pop();
              }
            },
          );
        },
        builder: (context, state) {
          return state.map(
            loading: (_) => const AppLoadingIndicator(),
            fetchError: (err) => AppErrorWidget(
              message: err.message,
              onRetry: () => context.read<EditProfileBloc>().add(
                FetchProfile(widget.userId),
              ),
            ),
            editing: (editingState) {
              if (!_controllersInitialized) {
                _usernameController.text = editingState.initialProfile.username;
                _displayNameController.text =
                    editingState.initialProfile.displayName;
                _bioController.text = editingState.initialProfile.bio ?? '';
                _controllersInitialized = true;
              }

              return SafeArea(
                child: SingleChildScrollView(
                  padding: const .symmetric(horizontal: 24, vertical: 24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _AvatarSection(
                          newAvatarFile: editingState.newAvatarFile,
                          removeAvatar: editingState.removeAvatar,
                          initialAvatarUrl:
                              editingState.initialProfile.avatarUrl,
                          uploadedUrl: editingState.uploadedAvatarUrl,
                          isUploading: editingState.isAvatarUploading,
                        ),
                        const SizedBox(height: 32),
                        const FieldLabel('Username'),
                        _UsernameField(
                          controller: _usernameController,
                          onChanged: _onUsernameChanged,
                          isCheckingUsername: editingState.isCheckingUsername,
                          username: editingState.username,
                          initialUsername: editingState.initialProfile.username,
                          isUsernameAvailable: editingState.isUsernameAvailable,
                          canChangeUsername: state.canChangeUsername,
                        ),
                        if (!state.canChangeUsername)
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'You can only change your username once every 90 days.',
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(color: AppColors.error),
                            ),
                          ),
                        const SizedBox(height: 16),
                        const FieldLabel('Display Name'),
                        AppTextField(
                          controller: _displayNameController,
                          hint: 'e.g. John Doe',
                          textCapitalization: TextCapitalization.words,
                          onChanged: (value) => context
                              .read<EditProfileBloc>()
                              .add(DisplayNameChanged(value)),
                          validator: Validators.displayName,
                        ),
                        const SizedBox(height: 16),
                        const FieldLabel('Bio (Optional)'),
                        AppTextField(
                          controller: _bioController,
                          hint: 'A little about you...',
                          maxLines: 3,
                          textCapitalization: TextCapitalization.sentences,
                          onChanged: (value) => context
                              .read<EditProfileBloc>()
                              .add(BioChanged(value)),
                          validator: Validators.bio,
                        ),
                        const SizedBox(height: 32),
                        AppButton(
                          text: 'Save Changes',
                          onPressed: state.canSubmit ? _submit : null,
                          isLoading:
                              editingState.submissionStatus ==
                              EditProfileSubmissionStatus.submitting,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _AvatarSection extends StatelessWidget {
  final File? newAvatarFile;
  final bool removeAvatar;
  final String? initialAvatarUrl;
  final String? uploadedUrl;
  final bool isUploading;

  const _AvatarSection({
    required this.newAvatarFile,
    required this.removeAvatar,
    required this.initialAvatarUrl,
    required this.uploadedUrl,
    required this.isUploading,
  });

  @override
  Widget build(BuildContext context) {
    return AppAvatarSelector(
      avatarFile: newAvatarFile,
      avatarUrl: uploadedUrl ?? (removeAvatar ? null : initialAvatarUrl),
      isLoading: isUploading,
      onTap: () async {
        final bloc = context.read<EditProfileBloc>();
        final hasImage =
            newAvatarFile != null || uploadedUrl != null ||
            (!removeAvatar && initialAvatarUrl != null);

        final file = await AvatarBottomSheet.show(context, hasImage: hasImage);
        if (file == null) return;
        if (file.path.isEmpty) {
          bloc.add(const RemoveAvatar());
        } else {
          bloc.add(AvatarChanged(file));
        }
      },
    );
  }
}

class _UsernameField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final bool isCheckingUsername;
  final String username;
  final String initialUsername;
  final bool isUsernameAvailable;
  final bool canChangeUsername;

  const _UsernameField({
    required this.controller,
    required this.onChanged,
    required this.isCheckingUsername,
    required this.username,
    required this.initialUsername,
    required this.isUsernameAvailable,
    required this.canChangeUsername,
  });

  @override
  Widget build(BuildContext context) {
    Widget? suffixIcon;
    if (isCheckingUsername) {
      suffixIcon = const Padding(
        padding: EdgeInsets.all(12),
        child: SizedBox(
          width: 16,
          height: 16,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    } else if (username.length >= 3 && username != initialUsername) {
      suffixIcon = isUsernameAvailable
          ? const Icon(Icons.check_circle, color: AppColors.success)
          : const Icon(Icons.error, color: AppColors.error);
    }

    return AppTextField(
      controller: controller,
      hint: 'e.g. johndoe',
      onChanged: onChanged,
      validator: Validators.username,
      suffixIcon: suffixIcon,
      enabled: canChangeUsername,
    );
  }
}
