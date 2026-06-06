import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_media_viewer.dart';
import 'package:pulse/core/widgets/app_network_image.dart';
import 'package:pulse/core/widgets/app_video_player.dart';
import 'package:pulse/shared/domain/entities/media_type.dart';
import 'package:pulse/shared/domain/entities/post_media_entity.dart';

class PostCardMediaCarousel extends StatefulWidget {
  final List<PostMediaEntity> mediaItems;

  const PostCardMediaCarousel({super.key, required this.mediaItems});

  @override
  State<PostCardMediaCarousel> createState() => _PostCardMediaCarouselState();
}

class _PostCardMediaCarouselState extends State<PostCardMediaCarousel> {
  final _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.mediaItems.isEmpty) return const SizedBox.shrink();

    final aspectRatio = _computeAspectRatio();

    return Padding(
      padding: const .only(bottom: 8.0),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: aspectRatio,
            child: PageView.builder(
              controller: _pageController,
              itemCount: widget.mediaItems.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) {
                final media = widget.mediaItems[index];
                return GestureDetector(
                  onTap: () => AppMediaViewer.open(
                    context,
                    mediaItems: widget.mediaItems,
                    initialIndex: index,
                  ),
                  child: _buildMediaItem(media),
                );
              },
            ),
          ),
          if (widget.mediaItems.length > 1)
            Padding(
              padding: const .only(top: 10),
              child: Row(
                mainAxisAlignment: .center,
                children: List.generate(
                  widget.mediaItems.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const .symmetric(horizontal: 3),
                    width: _currentPage == index ? 8 : 6,
                    height: _currentPage == index ? 8 : 6,
                    decoration: BoxDecoration(
                      shape: .circle,
                      color: _currentPage == index
                          ? context.colorScheme.primary
                          : context.colorScheme.outlineVariant,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildMediaItem(PostMediaEntity media) {
    if (media.type == MediaType.video) {
      return AppVideoPlayer(url: media.url, thumbnailUrl: media.thumbnailUrl);
    }

    return AppNetworkImage(
      url: media.url,
      width: double.infinity,
      height: double.infinity,
    );
  }

  double _computeAspectRatio() {
    final first = widget.mediaItems.first;
    if (first.width > 0 && first.height > 0) {
      final ratio = first.width / first.height;
      return ratio.clamp(0.6, 1.91);
    }
    return 1.0;
  }
}
