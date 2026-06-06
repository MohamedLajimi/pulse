import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/shared/domain/entities/media_type.dart';
import 'package:pulse/shared/domain/models/media_upload_models.dart';
import 'package:pulse/features/post/bloc/post_form/post_form_media.dart';
import 'package:pulse/features/post/bloc/post_form/post_form_bloc.dart';
import 'package:pulse/features/post/bloc/post_management/post_management_bloc.dart';
import 'package:pulse/features/post/widgets/post_media_picker_bottom_sheet.dart';
import 'package:pulse/features/post/widgets/removable_media_card.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/constants/app_constants.dart';
import 'package:uuid/uuid.dart';

class PostMediaReorderableGrid extends StatelessWidget {
  const PostMediaReorderableGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PostFormBloc, PostFormState, List<PostFormMedia>>(
      selector: (state) => state.mediaList,
      builder: (context, mediaList) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1,
          ),
          itemCount: (mediaList.length < AppConstants.maxPostMedia)
              ? mediaList.length + 1
              : mediaList.length,
          itemBuilder: (context, index) {
            if (index == mediaList.length &&
                mediaList.length < AppConstants.maxPostMedia) {
              return _buildAddButton(context, mediaList.length);
            }

            final media = mediaList[index];
            return RemovableMediaCard(
              key: ValueKey(media.id),
              url: media.remoteUrl,
              thumbnailUrl: media.remoteThumbnail,
              type: media.type,
              isUploading: media.localFile != null && media.remoteUrl == null,
              onRemove: () => context.read<PostFormBloc>().add(
                PostFormEvent.removeMedia(media.id),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildAddButton(BuildContext context, int currentCount) {
    return GestureDetector(
      onTap: () => _showPickerOptions(context),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.border, width: 1),
        ),
        child: const Center(
          child: Icon(
            Icons.add_rounded,
            size: 32,
            color: AppColors.textPrimary,
          ),
        ),
      ),
    );
  }

  Future<void> _showPickerOptions(BuildContext context) async {
    final result = await PostMediaPickerBottomSheet.show(context);
    if (result != null && context.mounted) {
      _addAndUpload(
        context.read<PostFormBloc>(),
        context.read<PostManagementBloc>(),
        result.files,
        result.thumbnails,
        result.type,
      );
    }
  }

  void _addAndUpload(
    PostFormBloc formBloc,
    PostManagementBloc managementBloc,
    List<File> files,
    List<File?>? thumbnails,
    MediaType type,
  ) {
    final List<PostFormMedia> newItems = [];
    final List<MediaUploadJob> uploadJobs = [];
    final postId = formBloc.state.id;

    for (int i = 0; i < files.length; i++) {
      final id = const Uuid().v4();
      final file = files[i];
      final thumb = thumbnails != null && i < thumbnails.length
          ? thumbnails[i]
          : null;

      newItems.add(
        PostFormMedia(
          id: id,
          type: type,
          localFile: file,
          localThumbnail: thumb,
          width: 1080,
          height: 1080,
        ),
      );

      uploadJobs.add(MediaUploadJob(id: id, file: file, thumbnail: thumb));
    }

    formBloc.add(PostFormEvent.addMedia(newItems));
    managementBloc.add(
      PostManagementEvent.uploadMedia(postId: postId, jobs: uploadJobs),
    );
  }
}
