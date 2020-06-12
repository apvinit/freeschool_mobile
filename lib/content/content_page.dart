import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:freeschool_mobile/content/content.dart';
import 'package:freeschool_mobile/services/remote.dart';
import 'package:video_player/video_player.dart';

class ContentPage extends StatefulWidget {
  final Content content;

  ContentPage({@required this.content, Key key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  FlickManager _flickManager;

  @override
  void initState() {
    super.initState();
    _flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.network(
        getStreamUrl(widget.content.data),
      ),
    );

  }

  @override
  void dispose() {
    _flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlickVideoPlayer(
              flickManager: _flickManager,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.content.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            if (widget.content.description != null)
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(widget.content.description),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
