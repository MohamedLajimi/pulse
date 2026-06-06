import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/core/widgets/app_network_image.dart';
import 'package:video_player/video_player.dart';

enum VideoPlayerMode { feed, gallery, detail }

class AppVideoPlayer extends StatefulWidget {
  final String url;
  final String? thumbnailUrl;
  final VideoPlayerMode mode;
  final bool autoPlay;
  final bool isMuted;

  const AppVideoPlayer({
    super.key,
    required this.url,
    this.mode = VideoPlayerMode.feed,
    this.thumbnailUrl,
    this.autoPlay = false,
    this.isMuted = true,
  });

  @override
  State<AppVideoPlayer> createState() => _AppVideoPlayerState();
}

class _AppVideoPlayerState extends State<AppVideoPlayer> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    );

    await _videoPlayerController!.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController!,
      autoPlay: widget.autoPlay,
      looping: widget.mode == VideoPlayerMode.feed,
      aspectRatio: _videoPlayerController!.value.aspectRatio,

    showControls:
          widget.mode != VideoPlayerMode.feed,
      showOptions: widget.mode == VideoPlayerMode.detail,
      allowFullScreen: widget.mode != VideoPlayerMode.feed,

      materialProgressColors: ChewieProgressColors(
        playedColor: AppColors.textPrimary,
        handleColor: AppColors.textPrimary,
        backgroundColor: Colors.white24,
      ),

      placeholder: widget.thumbnailUrl != null
          ? AppNetworkImage(
              url: widget.thumbnailUrl!,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            )
          : const Center(child: AppLoadingIndicator()),

      errorBuilder: (context, errorMessage) {
        return const Center(child: Icon(Icons.error, color: Colors.white));
      },
    );

    if (widget.isMuted) {
      _videoPlayerController!.setVolume(0);
    }

    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController?.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_chewieController != null &&
        _chewieController!.videoPlayerController.value.isInitialized) {
      return Chewie(controller: _chewieController!);
    }

    return widget.thumbnailUrl != null
        ? AppNetworkImage(
            url: widget.thumbnailUrl!,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          )
        : const Center(child: AppLoadingIndicator());
  }
}
