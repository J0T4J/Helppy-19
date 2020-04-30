import 'package:flutter/material.dart';
import 'package:teste_video/lista_itens_chewie.dart';
import 'package:video_player/video_player.dart';

class TelaVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dicas em vídeos"),
      ),
      body: ListView(
        children: <Widget>[
          ChewieList(
            videoPlayerController: VideoPlayerController.asset(
                'videos/Lavagem correta das mãos.mp4'),
          ),
        ],
      ),
    );
  }
}
