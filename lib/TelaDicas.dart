import 'package:flutter/material.dart';
import 'package:teste_video/TelaVideos.dart';
import 'lista_dicas.dart';

class TelaDicas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Dicas de Higienização',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.movie),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaVideo()),
                );
              } //Receber tela de vídeo
              )
        ],
      ),
      body: new ListView.builder(
          itemCount: dicas.length,
          itemBuilder: (context, index) {
            return new Padding(
              padding:
                  new EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: new Card(
                elevation: 8.0,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(16.0)),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new ClipRRect(
                      child: new Image.network(dicas[index].imageUrl),
                      borderRadius: BorderRadius.only(
                        topLeft: new Radius.circular(16.0),
                        topRight: new Radius.circular(16.0),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(16.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            dicas[index].title,
                            style: Theme.of(context).textTheme.title,
                          ),
                          new SizedBox(height: 16.0),
                          new Row(
                            children: <Widget>[
                              Flexible(
                                child: new Text(dicas[index].text),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add)
      ),
    );
  }
}
