import 'package:flutter/material.dart';
import 'package:teste_video/TelaVideos.dart';
import 'image_banner.dart';

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
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaVideo()),
                );
              } //Receber tela de vídeo
              )
        ],
      ),
      body: new ListView.builder(itemBuilder: (context, index,) {
        
        return new Padding(
          padding: new EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: new Card(
            elevation: 5.0,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(16.0)),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new ClipRRect(
                  child: new Image.network(
                      'https://s2.glbimg.com/w4GUjGO-kT0xLcbWSLHqe-fG_Bo=/0x0:1086x652/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/x/J/0ldrArS9q9dOOLdE16KA/estrutura-do-corona.jpg'),
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
                        'Aqui vai ser o título da dica!'.toUpperCase(),
                        style: Theme.of(context).textTheme.title,
                      ),
                      new SizedBox(height: 16.0),
                      new Row(
                        children: <Widget>[
                          new Text('Essa é a Imagem do Coronavirus!'),
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
       /*body: Container(
        
        margin: EdgeInsets.all(0),
        color: Colors.white,
        child: ListView(
          children: [
            Text(
              'NOME DA DICA 1',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network("https://s2.glbimg.com/w4GUjGO-kT0xLcbWSLHqe-fG_Bo=/0x0:1086x652/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/x/J/0ldrArS9q9dOOLdE16KA/estrutura-do-corona.jpg"),
                  
                ]),
            Container(
              // Texto dica 1
              padding: EdgeInsets.all(10),
              child: Text(
                  '    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            ),
            Text(
              'NOME DA DICA 2',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
                //imagem 2
                height: 200,
                padding: EdgeInsets.all(60),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12)),
            Container(
              // Texto dica 2
              padding: EdgeInsets.all(10),
              child: Text(
                  '    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            ),
            Text(
              'NOME DA DICA 3',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
                //imagem 3
                height: 200,
                padding: EdgeInsets.all(60),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12)),
            Container(
              // Texto dica 3
              padding: EdgeInsets.all(10),
              child: Text(
                  '    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            ),
            Text(
              'NOME DA DICA 4',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
                //imagem 4
                height: 200,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12)),
            Container(
              // Texto dica 4
              padding: EdgeInsets.all(10),
              child: Text(
                  '    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            ),
          ],
        ),
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
