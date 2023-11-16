import 'package:flutter/material.dart';
import 'globals.dart' as globals;
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class FagPage extends StatefulWidget {
  final faq;
  FagPage(this.faq);

  @override
  _FagPageState createState() => _FagPageState(faq);
}

class _FagPageState extends State<FagPage> {
  final faq;
  var answer;
  bool video = false;
  var rating = 4.0;
  _FagPageState(this.faq);

  @override
  void initState() {
    super.initState();
    setState(() {
      for (var i = 0; i <= globals.faqanswer.length - 1; i++) {
        if (globals.faqanswer[i].toLowerCase().contains(faq.toLowerCase())) {
          answer = globals.faqanswer[i + 1];
          break;
        }
      }
      for (var j = 0; j <= globals.collectionfaq.length - 1; j++) {
        if (globals.collectionfaq[j]
                .toLowerCase()
                .contains(faq.toLowerCase()) &&
            globals.collectionfaq[j - 1]
                .toLowerCase()
                .contains('VIDEOS'.toLowerCase())) {
          video = true;
          break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade900,
        automaticallyImplyLeading: true,
        title:
            new Text("FAQs and Ansers", style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
          child: Container(
              color: Colors.grey[200],
              padding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 8.0),
              child: Column(children: [
                Text(faq, style: TextStyle(fontSize: 30.0)),
                Padding(padding: EdgeInsets.all(12.0)),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 20,
                    child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                video
                                    ? YoutubePlayerIFrame(
                                        controller: YoutubePlayerController(
                                          initialVideoId: answer,
                                          params: YoutubePlayerParams(
                                            // Defining custom playlist
                                            startAt: Duration(seconds: 0),
                                            showControls: false,
                                            showFullscreenButton: true,
                                          ),
                                        ),
                                        aspectRatio: 16 / 9,
                                      )
                                    : Text(answer,
                                        style: TextStyle(fontSize: 18.0)),
                              ]),
                        ))),
              ]))),
    );
  }
}
