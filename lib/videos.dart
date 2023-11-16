import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class SetsofVideos extends StatefulWidget {
  @override
  _SetsofVideosState createState() => _SetsofVideosState();
}

class _SetsofVideosState extends State<SetsofVideos> {
  TextEditingController editingController = TextEditingController();
  final List UIList = [];

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
      Padding(
          padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
          child: SizedBox(
            height: 200,
            width: 175,
            child: YoutubePlayerIFrame(
              controller: YoutubePlayerController(
                initialVideoId: 'AmqDOA-JALg',
                params: YoutubePlayerParams(
                  // Defining custom playlist
                  showVideoAnnotations: true,
                  startAt: Duration(seconds: 0),
                  showControls: false,
                  showFullscreenButton: true,
                ),
              ),
              aspectRatio: 16 / 9,
            ),
          )),
    );
    UIList.add(
      Padding(
          padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
          child: SizedBox(
            height: 200,
            width: 175,
            child: YoutubePlayerIFrame(
              controller: YoutubePlayerController(
                initialVideoId: 'U5sLtyUvL8U',
                params: YoutubePlayerParams(
                  // Defining custom playlist
                  showVideoAnnotations: true,
                  startAt: Duration(seconds: 0),
                  showControls: false,
                  showFullscreenButton: true,
                ),
              ),
              aspectRatio: 16 / 9,
            ),
          )),
    );
    UIList.add(
      Padding(
          padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
          child: SizedBox(
            height: 200,
            width: 175,
            child: YoutubePlayerIFrame(
              controller: YoutubePlayerController(
                initialVideoId: 'Sxddnugwu-8',
                params: YoutubePlayerParams(
                  // Defining custom playlist
                  showVideoAnnotations: true,
                  startAt: Duration(seconds: 0),
                  showControls: false,
                  showFullscreenButton: true,
                ),
              ),
              aspectRatio: 16 / 9,
            ),
          )),
    );
    UIList.add(
      Padding(
          padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
          child: SizedBox(
            height: 200,
            width: 175,
            child: YoutubePlayerIFrame(
              controller: YoutubePlayerController(
                initialVideoId: '8TuRYV71Rgo',
                params: YoutubePlayerParams(
                  // Defining custom playlist
                  showVideoAnnotations: true,
                  startAt: Duration(seconds: 0),
                  showControls: false,
                  showFullscreenButton: true,
                ),
              ),
              aspectRatio: 16 / 9,
            ),
          )),
    );
    UIList.add(
      Padding(
          padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
          child: SizedBox(
            height: 200,
            width: 175,
            child: YoutubePlayerIFrame(
              controller: YoutubePlayerController(
                initialVideoId: 'GMSC95hEj2w',
                params: YoutubePlayerParams(
                  // Defining custom playlist
                  showVideoAnnotations: true,
                  startAt: Duration(seconds: 0),
                  showControls: false,
                  showFullscreenButton: true,
                ),
              ),
              aspectRatio: 16 / 9,
            ),
          )),
    );
    UIList.add(
      Padding(
          padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
          child: SizedBox(
            height: 200,
            width: 175,
            child: YoutubePlayerIFrame(
              controller: YoutubePlayerController(
                initialVideoId: 'o18I23HCQtE',
                params: YoutubePlayerParams(
                  // Defining custom playlist
                  showVideoAnnotations: true,
                  startAt: Duration(seconds: 0),
                  showControls: false,
                  showFullscreenButton: true,
                ),
              ),
              aspectRatio: 16 / 9,
            ),
          )),
    );
    UIList.add(
      Padding(
          padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
          child: SizedBox(
            height: 200,
            width: 175,
            child: YoutubePlayerIFrame(
              controller: YoutubePlayerController(
                initialVideoId: '2FGR-OspxsU',
                params: YoutubePlayerParams(
                  // Defining custom playlist
                  showVideoAnnotations: true,
                  startAt: Duration(seconds: 0),
                  showControls: false,
                  showFullscreenButton: true,
                ),
              ),
              aspectRatio: 16 / 9,
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.deepPurple.shade900,
        centerTitle: true,
        title: new Text("Videos", style: TextStyle(color: Colors.white)),
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
