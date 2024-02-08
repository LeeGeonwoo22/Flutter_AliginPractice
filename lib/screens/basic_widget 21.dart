import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Basic_Widget_21 extends StatefulWidget {
  const Basic_Widget_21({super.key});

  @override
  State<Basic_Widget_21> createState() => _Basic_Widget_21State();
}

class _Basic_Widget_21State extends State<Basic_Widget_21> {
  static String youtubeId = '6tDcZNa_Q2M';

  final YoutubePlayerController _con = YoutubePlayerController(
      initialVideoId: youtubeId,
      flags: const YoutubePlayerFlags(autoPlay: false));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('youtube player'),
      ),
      body: Container(
          child: YoutubePlayer(
        controller: _con,
      )),
    );
  }
}
