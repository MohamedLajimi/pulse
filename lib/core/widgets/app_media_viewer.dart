import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse/core/widgets/app_network_image.dart';
import 'package:pulse/core/widgets/app_video_player.dart';
import 'package:pulse/shared/domain/entities/media_type.dart';
import 'package:pulse/shared/domain/entities/post_media_entity.dart';

class AppMediaViewer extends StatefulWidget {
  final List<PostMediaEntity> mediaItems;
  final int initialIndex;

  const AppMediaViewer({
    super.key,
    required this.mediaItems,
    this.initialIndex = 0,
  });

  static void open(
    BuildContext context, {
    required List<PostMediaEntity> mediaItems,
    int initialIndex = 0,
  }) {
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, animation, secondaryAnimation) =>
            AppMediaViewer(mediaItems: mediaItems, initialIndex: initialIndex),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  State<AppMediaViewer> createState() => _AppMediaViewerState();
}

class _AppMediaViewerState extends State<AppMediaViewer> {
  late final PageController _pageController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.xmark, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: widget.mediaItems.length > 1
            ? Text(
                '${_currentIndex + 1} / ${widget.mediaItems.length}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            : null,
        centerTitle: true,
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: widget.mediaItems.length,
        onPageChanged: (index) => setState(() => _currentIndex = index),
        itemBuilder: (context, index) {
          final media = widget.mediaItems[index];
          return Center(child: _buildMediaContent(media));
        },
      ),
    );
  }

  Widget _buildMediaContent(PostMediaEntity media) {
    if (media.type == MediaType.video) {
      return AppVideoPlayer(
        url: media.url,
        thumbnailUrl: media.thumbnailUrl,
        autoPlay: true,
        // fit: BoxFit.contain,
      );
    }

    return InteractiveViewer(
      minScale: 1.0,
      maxScale: 4.0,
      child: AppNetworkImage(
        url: media.url,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.contain,
      ),
    );
  }
}
