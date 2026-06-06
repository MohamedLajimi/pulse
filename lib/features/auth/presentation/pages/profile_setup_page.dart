import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/core/router/route_names.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/utils/debouncer.dart';
import 'package:pulse/core/utils/validators.dart';
import 'package:pulse/core/widgets/app_button.dart';
import 'package:pulse/core/widgets/app_snack_bar.dart';
import 'package:pulse/core/widgets/app_text_field.dart';
import 'package:pulse/core/widgets/app_avatar_selector.dart';
import 'package:pulse/core/widgets/avatar_bottom_sheet.dart';
import 'package:pulse/core/widgets/field_label.dart';
import 'package:pulse/features/auth/presentation/widgets/auth_header.dart';
import 'package:pulse/features/auth/presentation/bloc/profile_setup_bloc/profile_setup_bloc.dart';

class ProfileSetupPage extends StatefulWidget {
  const ProfileSetupPage({super.key});

  @override
  State<ProfileSetupPage> createState() => _ProfileSetupPageState();
}

class _ProfileSetupPageState extends State<ProfileSetupPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _displayNameController = TextEditingController();
  final _bioController = TextEditingController();
  final _debouncer = Debouncer(duration: const Duration(milliseconds: 500));

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
      context.read<ProfileSetupBloc>().add(
        ProfileSetupEvent.usernameChanged(value),
      );
    });
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    final bloc = context.read<ProfileSetupBloc>();
    if (!bloc.state.isFormValid) {
      AppSnackBar.show(
        context,
        message: 'Please resolve form errors before submitting',
        type: SnackBarType.error,
      );
      return;
    }

    FocusScope.of(context).unfocus();
    bloc.add(
      ProfileSetupEvent.submitProfileSetup(
        displayName: _displayNameController.text.trim(),
        bio: _bioController.text.trim().isEmpty
            ? null
            : _bioController.text.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<ProfileSetupBloc, ProfileSetupState>(
        listenWhen: (previous, current) =>
            previous.status != current.status ||
            previous.errorMessage != current.errorMessage,
        listener: (context, state) {
          if (state.status == FormStatus.error && state.errorMessage != null) {
            AppSnackBar.show(
              context,
              message: state.errorMessage!,
              type: SnackBarType.error,
            );
          } else if (state.status == FormStatus.success) {
            context.read<AppUserBloc>().add(const ProfileUpdated());
            context.goNamed(RouteNames.feed);
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const .symmetric(horizontal: 24, vertical: 40),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  const AuthHeader(
                    title: 'Set up profile',
                    subtitle: 'Tell us a bit about yourself',
                  ),
                  const SizedBox(height: 32),
                  const _AvatarSection(),
                  const SizedBox(height: 32),
                  const FieldLabel('Username'),
                  _UsernameField(
                    controller: _usernameController,
                    onChanged: _onUsernameChanged,
                  ),
                  const SizedBox(height: 16),
                  const FieldLabel('Display Name'),
                  AppTextField(
                    controller: _displayNameController,
                    hint: 'e.g. John Doe',
                    textCapitalization: TextCapitalization.words,
                    validator: Validators.displayName,
                  ),
                  const SizedBox(height: 16),
                  const FieldLabel('Bio (Optional)'),
                  AppTextField(
                    controller: _bioController,
                    hint: 'A little about you...',
                    maxLines: 3,
                    textCapitalization: TextCapitalization.sentences,
                    validator: Validators.bio,
                  ),
                  const SizedBox(height: 32),
                  _SubmitSection(onSubmit: _submit),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AvatarSection extends StatelessWidget {
  const _AvatarSection();

  @override
  Widget build(BuildContext context) {
    final avatarFile = context.select((ProfileSetupBloc b) => b.state.avatar);
    final isUploading = context.select(
      (ProfileSetupBloc b) => b.state.isAvatarUploading,
    );
    final uploadedUrl = context.select(
      (ProfileSetupBloc b) => b.state.uploadedAvatarUrl,
    );

    return AppAvatarSelector(
      avatarFile: avatarFile,
      avatarUrl: uploadedUrl,
      isLoading: isUploading,
      onTap: () async {
        final bloc = context.read<ProfileSetupBloc>();
        final file = await AvatarBottomSheet.show(
          context,
          hasImage: avatarFile != null || uploadedUrl != null,
        );
        if (file == null) return;

        if (file.path.isEmpty) {
          bloc.add(const ProfileSetupEvent.avatarChanged(null));
        } else {
          bloc.add(ProfileSetupEvent.avatarChanged(file));
        }
      },
    );
  }
}

class _UsernameField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const _UsernameField({required this.controller, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final isChecking = context.select(
      (ProfileSetupBloc b) => b.state.isCheckingUsername,
    );
    final isAvailable = context.select(
      (ProfileSetupBloc b) => b.state.isUsernameAvailable,
    );
    final currentUsername = context.select(
      (ProfileSetupBloc b) => b.state.username,
    );

    Widget? suffixIcon;
    if (isChecking) {
      suffixIcon = const Padding(
        padding: .all(12),
        child: SizedBox(
          width: 16,
          height: 16,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    } else if (currentUsername.length >= 3) {
      suffixIcon = isAvailable
          ? const Icon(Icons.check_circle, color: AppColors.success)
          : const Icon(Icons.error, color: AppColors.error);
    }

    return AppTextField(
      controller: controller,
      hint: 'e.g. johndoe',
      onChanged: onChanged,
      validator: Validators.username,
      suffixIcon: suffixIcon,
    );
  }
}

class _SubmitSection extends StatelessWidget {
  final VoidCallback onSubmit;

  const _SubmitSection({required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    final isFormValid = context.select(
      (ProfileSetupBloc b) => b.state.isFormValid,
    );
    final isSubmitting = context.select(
      (ProfileSetupBloc b) => b.state.status == FormStatus.submitting,
    );

    return AppButton(
      text: 'Complete Setup',
      onPressed: onSubmit,
      isLoading: isSubmitting,
      isEnabled: isFormValid,
    );
  }
}
