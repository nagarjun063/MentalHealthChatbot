import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class SetsofMusic extends StatefulWidget {
  @override
  _SetsofMusicState createState() => _SetsofMusicState();
}

class _SetsofMusicState extends State<SetsofMusic> {
  TextEditingController editingController = TextEditingController();
  final List UIList = [];
  final assetsAudioPlayer = AssetsAudioPlayer();
  bool isPlaying = false;
  @override
  void initState() {
    setState(() {
      setofkb();
    });

    super.initState();
  }

  setofkb() {
    UIList.add(Padding(padding: EdgeInsets.all(16.0)));

    UIList.add(
      Container(
        width: 150,
        height: 150,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.blue,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.article, size: 60),
                title: Text('AUDIO.1', style: TextStyle(fontSize: 30.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Play'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SetsofMusic()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    UIList.add(Padding(padding: EdgeInsets.all(16.0)));

    UIList.add(
      Container(
        width: 150,
        height: 150,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.blue,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.article, size: 60),
                title: Text('AUDIO.2', style: TextStyle(fontSize: 30.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Play'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SetsofMusic()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    UIList.add(Padding(padding: EdgeInsets.all(16.0)));

    UIList.add(
      Container(
        width: 150,
        height: 150,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.blue,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.article, size: 60),
                title: Text('AUDIO.3', style: TextStyle(fontSize: 30.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Play'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SetsofMusic()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    UIList.add(Padding(padding: EdgeInsets.all(16.0)));

    UIList.add(
      Container(
        width: 150,
        height: 150,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.blue,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.article, size: 60),
                title: Text('AUDIO.4', style: TextStyle(fontSize: 30.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Play'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SetsofMusic()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    UIList.add(Padding(padding: EdgeInsets.all(16.0)));

    UIList.add(
      Container(
        width: 150,
        height: 150,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.blue,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.article, size: 60),
                title: Text('AUDIO.5', style: TextStyle(fontSize: 30.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Play'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SetsofMusic()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    UIList.add(Padding(padding: EdgeInsets.all(16.0)));

    UIList.add(
      Container(
        width: 150,
        height: 150,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.blue,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.article, size: 60),
                title: Text('AUDIO.6', style: TextStyle(fontSize: 30.0)),
                // subtitle: Text(
                //   'Best of Sonu Nigam Music.',
                //   style: TextStyle(fontSize: 18.0)
                // ),
              ),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Play'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SetsofMusic()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    UIList.add(Padding(padding: EdgeInsets.all(16.0)));

    UIList.add(
      Container(
        width: 150,
        height: 150,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.blue,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.article, size: 60),
                title: Text('AUDIO.7', style: TextStyle(fontSize: 30.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Play'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SetsofMusic()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    UIList.add(Padding(padding: EdgeInsets.all(16.0)));

    UIList.add(
      Container(
        width: 150,
        height: 150,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.blue,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.article, size: 60),
                title: Text('AUDIO.8', style: TextStyle(fontSize: 30.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Play'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SetsofMusic()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    UIList.add(Padding(padding: EdgeInsets.all(16.0)));

    UIList.add(
      Container(
        width: 150,
        height: 150,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.blue,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.article, size: 60),
                title: Text('AUDIO.9', style: TextStyle(fontSize: 30.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Play'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SetsofMusic()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    UIList.add(Padding(padding: EdgeInsets.all(16.0)));

    UIList.add(
      Container(
        width: 150,
        height: 150,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.blue,
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.article, size: 60),
                title: Text('AUDIO.10', style: TextStyle(fontSize: 30.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Play'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SetsofMusic()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        centerTitle: false,
        title: new Text("Back", style: TextStyle(color: Colors.indigo)),
      ),
      body: new Column(children: <Widget>[
        new Flexible(
            child: new ListView.builder(
          padding: new EdgeInsets.all(8.0),
          shrinkWrap: false,
          itemBuilder: (_, int index) => UIList[index],
          itemCount: UIList.length,
        )),
        new Divider(height: 1.0),
      ]),
    );
  }
}
