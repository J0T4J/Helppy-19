import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'lista_videos.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  YoutubePlayerController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube Player"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TelaVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dicas em vídeos"),
      ),
      body: new ListView.builder(
          itemCount: videos.length,
          itemBuilder: (context, index) {
            return new Padding(
              padding:
                  new EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: new Card(
                elevation: 12.0,
                color: Colors.blue[200],
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(16.0)),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    /* new ClipRRect(
                      child: ChewieList(
                        videoPlayerController: VideoPlayerController.network(
                            videos[index].videoUrl),
                      ), //AQUI OH, É O VIDEO
                      borderRadius: BorderRadius.only(
                        topLeft: new Radius.circular(16.0),
                        topRight: new Radius.circular(16.0),
                      ),
                    ), */
                    new ClipRRect(
                      child: YoutubePlayer(
                        controller: YoutubePlayerController(
                            initialVideoId: YoutubePlayer.convertUrlToId(
                                videos[index].videoUrl),
                            flags: YoutubePlayerFlags(autoPlay: false)),
                        showVideoProgressIndicator: true,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: new Radius.circular(16.0),
                        topRight: new Radius.circular(16.0),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(10.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            videos[index].title, //AQUI OH, É O TITULO
                            style: Theme.of(context).textTheme.title,
                          ),
                          new SizedBox(height: 12.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
