import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freeschool_mobile/services/remote.dart';
import 'package:video_player/video_player.dart';

class FullScreenVideoPlayer extends StatefulWidget {
  final String data;

  FullScreenVideoPlayer({@required this.data});

  @override
  _FullScreenVideoPlayerState createState() => _FullScreenVideoPlayerState();
}

class _FullScreenVideoPlayerState extends State<FullScreenVideoPlayer> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    // DeviceOrientation
    // SystemUiOverlay
    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    _controller = VideoPlayerController.network(getStreamUrl(widget.data))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    // SystemChrome.restoreSystemUIOverlays();
    SystemChrome.setPreferredOrientations([]);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Stack(
            children: [
              VideoPlayer(_controller),
              Center(
                child: IconButton(
                  icon: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                    color: Colors.white,
                    size: 48,
                  ),
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
