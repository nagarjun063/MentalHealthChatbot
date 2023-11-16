import 'package:flutter/material.dart';
import 'faqanswerpage.dart';
import 'globals.dart' as globals;
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CollectionPage extends StatefulWidget {
  final collection;
  CollectionPage(this.collection);

  @override
  _CollectionPageState createState() => _CollectionPageState(collection);
}

class _CollectionPageState extends State<CollectionPage> {
  final collection;
  _CollectionPageState(this.collection);
  TextEditingController editingController = TextEditingController();
  final List UIList = [];
  var searchexist = 0;

  @override
  void initState() {
    setState(() {
      setofkb();
    });
    super.initState();
  }

  void filterSearchResults(String query) {
    searchexist = 0;
    var video = false;
    List dummySearchList = [];
    dummySearchList.addAll(globals.faqs);
    if (query.isNotEmpty) {
      List dummyListData = [];
      dummySearchList.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          for (var s = 0; s <= globals.collectionfaq.length - 1; s++) {
            if (globals.collectionfaq[s] == item &&
                globals.collectionfaq[s - 1]
                    .toLowerCase()
                    .contains('VIDEO'.toLowerCase())) {
              setState(() {
                video = true;
              });
            }
          }
          dummyListData.add(Padding(
              padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
              child: SizedBox(
                height: 100,
                width: 175,
                child: OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(BorderSide(
                        color: Colors.purple.shade900,
                        width: 1.0,
                        style: BorderStyle.solid)),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.deepPurple.shade900;
                      return Colors.white;
                    }),
                    iconColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.white;
                      return Colors.deepPurple.shade900;
                    }),
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.white;
                      return Colors.deepPurple.shade900;
                    }),
                  ),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FagPage(item)),
                    )
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      new Text(item),
                    ],
                  ),
                ),
              )));
          setState(() {
            searchexist++;
          });
        }
      });
      if (searchexist == 0) {
        dummyListData.add(SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width - 40,
            child: Card(
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Content Not Found',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              )),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'The content you are looking for is not present in our database.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ]),
            )));
      }

      setState(() {
        UIList.clear();
        UIList.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        UIList.clear();
        setofkb()();
      });
    }
  }

  setofkb() {
    List<String> collectionsfaq = [];
    collectionsfaq.addAll(globals.collectionfaq);
    UIList.add(Padding(
      padding: EdgeInsets.all(8.0),
    ));
    if (collection.toLowerCase().contains('VIDEOS'.toLowerCase())) {
      for (var j = 0; j <= collectionsfaq.length - 1; j++) {
        if (collection == collectionsfaq[j]) {
          // for(var k = 0; k <= globals.faqanswer.length - 1; k++) {
          // if (globals.collections[i] == collectionsfaq[j]&&globals.faqanswer[k]==collectionsfaq[j+1]) {
          UIList.add(
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: globals.collectionfaq[j + 1],
                      style: TextStyle(
                        fontSize: 16.0,
                      )),
                ],
              ),
            )
          ]));
          UIList.add(
            Padding(
                padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
                child: SizedBox(
                  height: 200,
                  width: 175,
                  child: YoutubePlayerIFrame(
                    controller: YoutubePlayerController(
                      initialVideoId: globals.faqanswer[j + 1],
                      params: YoutubePlayerParams(
                        // Defining custom playlist
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
      }
    } else {
      for (var j = 0; j <= collectionsfaq.length - 1; j++) {
        if (collection == collectionsfaq[j]) {
          UIList.add(Padding(
              padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
              child: SizedBox(
                height: 100,
                width: 175,
                child: OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(BorderSide(
                        color: Colors.purple.shade900,
                        width: 1.0,
                        style: BorderStyle.solid)),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.deepPurple.shade900;
                      return Colors.white;
                    }),
                    iconColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.white;
                      return Colors.deepPurple.shade900;
                    }),
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.white;
                      return Colors.deepPurple.shade900;
                    }),
                  ),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FagPage(collectionsfaq[j + 1])),
                    )
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      new Text(collectionsfaq[j + 1]),
                    ],
                  ),
                ),
              )));
        }
      }
    }
  }

  Widget _buildTextComposer() {
    return new Container(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(children: [
          Container(
            width: MediaQuery.of(context).size.width - 20,
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              cursorColor: Colors.deepPurple.shade900,
              controller: editingController,
              decoration: InputDecoration(
                  hintText: "Hi there! Start your search here....",
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.deepPurple.shade900,
                  ),
                  border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(1)))),
            ),
          ),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade900,
        title: new Text(
          'FAQs',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
          color: Colors.white,
          child: Column(children: <Widget>[
            new Flexible(
                child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              shrinkWrap: false,
              itemBuilder: (_, int index) => UIList[index],
              itemCount: UIList.length,
            )),
            new Divider(height: 1.0),
            new Container(
              // decoration: new BoxDecoration(
              //     color: Colors.white,
              //     border: Border.all(color: Colors.deepPurple.shade900)),
              child: _buildTextComposer(),
            ),
          ])),
    );
  }
}
