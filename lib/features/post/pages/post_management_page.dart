import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/core/widgets/app_error_widget.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/features/post/widgets/post_media_header.dart';
import 'package:pulse/core/constants/app_constants.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/widgets/app_rich_text_controller.dart';
import 'package:pulse/core/widgets/app_rich_text_field.dart';
import 'package:pulse/core/widgets/app_snack_bar.dart';
import 'package:pulse/core/widgets/mentions_list.dart';
import 'package:pulse/core/widgets/post_user_section.dart';
import 'package:pulse/features/post/bloc/post_form/post_form_bloc.dart';
import 'package:pulse/features/post/bloc/post_management/post_management_bloc.dart';
import 'package:pulse/features/post/widgets/post_management_app_bar.dart';
import 'package:pulse/features/post/widgets/post_media_grid.dart';

class PostManagementPage extends StatefulWidget {
  final String? postId;
  const PostManagementPage({super.key, this.postId});

  @override
  State<PostManagementPage> createState() => _PostManagementPageState();
}

class _PostManagementPageState extends State<PostManagementPage> {
  late final AppRichTextController _captionController;

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() {
    _captionController = AppRichTextController(
      styles: {
        RegExp(r'@\w+'): const TextStyle(
          color: AppColors.verified,
          fontWeight: .w600,
        ),
        RegExp(r'#\w+'): const TextStyle(
          color: AppColors.verified,
          fontWeight: .w400,
        ),
      },
    );
    if (widget.postId != null) {
      context.read<PostManagementBloc>().add(GetPostById(widget.postId!));
    }
  }

  @override
  void dispose() {
    _captionController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    final formBloc = context.read<PostFormBloc>();
    final managementBloc = context.read<PostManagementBloc>();
    final formState = formBloc.state;

    if (!formState.canSubmit) return;

    final userId =
        context.read<AppUserBloc>().state.whenOrNull(
          authenticated: (profile) => profile.id,
        ) ??
        '';

    if (formState.isEditMode) {
      managementBloc.add(
        PostManagementEvent.updatePost(
          id: formState.id,
          caption: formState.caption,
          location: formState.location,
          mediaToInsert: formState.getMediaToInsert(userId),
          mediaIdsToDelete: formState.mediaIdsToDelete,
          mediaToUpdateSortOrder: formState.getMediaToUpdateSortOrder(userId),
          mentionsToInsert: formState.mentionsToInsert,
          mentionsToDelete: formState.mentionsToDelete,
          hashtagsToInsert: formState.hashtagsToInsert,
          hashtagsToDelete: formState.hashtagsToDelete,
        ),
      );
    } else {
      managementBloc.add(
        PostManagementEvent.createPost(
          id: formState.id,
          userId: userId,
          caption: formState.caption,
          location: formState.location,
          media: formState.getMediaEntities(userId),
          mentions: formState.mentions,
          hashtags: formState.hashtags,
        ),
      );
    }
  }

  void _handleManagementListener(
    BuildContext context,
    PostManagementState state,
  ) {
    final formBloc = context.read<PostFormBloc>();
    state.whenOrNull(
      error: (message, failedMediaIds) {
        AppSnackBar.show(context, message: message, type: SnackBarType.error);
        if (failedMediaIds.isNotEmpty) {
          for (String id in failedMediaIds) {
            formBloc.add(PostFormEvent.removeMedia(id));
          }
        }
      },
      postFormDataSuccess: (post) {
        formBloc.add(PostFormEvent.initialize(existingPost: post));
        _captionController.text = post.caption ?? '';
      },
      uploadSuccess: (results) {
        formBloc.add(PostFormEvent.updateMediaUrls(results));
      },
      suggestionResults: (suggestions) {
        formBloc.add(PostFormEvent.updateMentionSuggestions(suggestions));
      },
      operationSuccess: (post) {
        AppSnackBar.show(
          context,
          message: 'Post saved successfully',
          type: SnackBarType.success,
        );
        if (widget.postId == null) {
          _captionController.clear();
          formBloc.add(PostFormEvent.reset());
        } else {
          context.pop();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<PostManagementBloc, PostManagementState>(
          listener: _handleManagementListener,
        ),
        BlocListener<PostFormBloc, PostFormState>(
          listenWhen: (previous, current) =>
              previous.mentionQuery != current.mentionQuery &&
              current.isSearchingMention,
          listener: (context, state) {
            context.read<PostManagementBloc>().add(
              PostManagementEvent.getMentionSuggestions(state.mentionQuery),
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: PostManagementAppBar(
          isUpdate: context.select(
            (PostFormBloc bloc) => bloc.state.isEditMode,
          ),
          isEnabled: context.select(
            (PostFormBloc bloc) => bloc.state.canSubmit,
          ),
          isLoading: context.select(
            (PostManagementBloc bloc) => bloc.state.maybeWhen(
              submitting: () => true,
              orElse: () => false,
            ),
          ),
          onSubmit: _onSubmit,
        ),
        body: BlocBuilder<PostManagementBloc, PostManagementState>(
          builder: (context, state) {
            if (state is PostManagementFetchingPostFormData) {
              return const AppLoadingIndicator();
            }
            if (state is PostManagementFetchPostByIdError) {
              return AppErrorWidget(
                message: state.message,
                onRetry: widget.postId == null
                    ? null
                    : () => context.read<PostManagementBloc>().add(
                        PostManagementEvent.getPostById(widget.postId!),
                      ),
              );
            }
            return IgnorePointer(
              ignoring: context.select(
                (PostManagementBloc bloc) => bloc.state.maybeWhen(
                  submitting: () => true,
                  orElse: () => false,
                ),
              ),
              child: ListView(
                padding: const .all(16.0),
                children: [
                  const PostUserSection(),

                  BlocBuilder<PostFormBloc, PostFormState>(
                    buildWhen: (previous, current) =>
                        previous.mentionSuggestions !=
                        current.mentionSuggestions,
                    builder: (context, state) {
                      return AppRichTextField(
                        controller: _captionController,
                        hintText: "What's on your mind?",
                        maxLength: AppConstants.captionMaxLength,
                        maxLines: 10,
                        onChanged: (text) => context.read<PostFormBloc>().add(
                          PostFormEvent.captionChanged(text),
                        ),
                        onMentionSearch: (query) => context
                            .read<PostFormBloc>()
                            .add(PostFormEvent.searchMentions(query)),
                        onHashtagSearch: (query) => context
                            .read<PostFormBloc>()
                            .add(PostFormEvent.searchHashtags(query)),
                        onSearchStopped: () => context.read<PostFormBloc>().add(
                          const PostFormEvent.stopSearch(),
                        ),
                        suggestionOverlay: state.mentionSuggestions.isNotEmpty
                            ? MentionsList(
                                controller: _captionController,
                                suggestions: state.mentionSuggestions,
                                onTap: (username) {
                                  context.read<PostFormBloc>().add(
                                    PostFormEvent.mentionSelected(username),
                                  );
                                },
                              )
                            : null,
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  const PostMediaHeader(),
                  const PostMediaReorderableGrid(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
