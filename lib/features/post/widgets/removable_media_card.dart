import 'package:flutter/material.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/shared/domain/entities/media_type.dart';
import 'package:pulse/core/widgets/app_network_image.dart';
import 'package:pulse/core/widgets/app_video_player.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';

class RemovableMediaCard extends StatelessWidget {
  final String? url;
  final String? thumbnailUrl;
  final MediaType type;
  final bool isUploading;
  final VoidCallback onRemove;

  const RemovableMediaCard({
    super.key,
    required this.url,
    this.thumbnailUrl,
    required this.type,
    this.isUploading = false,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: .circular(12),
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (url != null)
            _buildMedia()
          else
            Container(
              color: AppColors.surface,
              child: const Center(child: AppLoadingIndicator(size: 24)),
            ),

          if (!isUploading)
            Positioned(
              top: 8,
              right: 8,
              child: GestureDetector(
                onTap: onRemove,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(4),
                  child: const Icon(
                    Icons.close_rounded,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

          if (type == MediaType.video && !isUploading)
            const Positioned(
              bottom: 8,
              left: 8,
              child: Icon(
                Icons.play_circle_outline_rounded,
                size: 20,
                color: Colors.white70,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildMedia() {
    if (type == MediaType.image) {
      return AppNetworkImage(
        url: url!,
        width: double.infinity,
        height: double.infinity,
      );
    } else {
      return AppVideoPlayer(url: url!, thumbnailUrl: thumbnailUrl);
    }
  }
}
