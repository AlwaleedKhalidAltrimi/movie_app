import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerWidget extends StatefulWidget {
  final String videoKey;
  const YoutubePlayerWidget({super.key, required this.videoKey});

  @override
  State<YoutubePlayerWidget> createState() => _YoutubePlayerWidgetState();
}

class _YoutubePlayerWidgetState extends State<YoutubePlayerWidget> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoKey, // YouTube video ID
      flags: const YoutubePlayerFlags(
        autoPlay: false, // Do not start the video automatically
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: YoutubePlayer(
        controller: _controller,
        // showVideoProgressIndicator: true,
        // controlsTimeOut: const Duration(milliseconds: 1500),
        // Show a red loading spinner while buffering
        bufferIndicator: const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          ),
        ),
        bottomActions: const [
          // Show the current playback position
          CurrentPosition(),
          ProgressBar(
            isExpanded: true,
            colors: ProgressBarColors(
              playedColor: Colors.white, // Played portion color
              handleColor: Colors.red, // Handle color on the progress bar
            ),
          ),
          RemainingDuration(), // Show remaining time of the video
          // FullScreenButton(),  // Uncomment this line to add full-screen button
        ],
      ),
    );
  }
}
