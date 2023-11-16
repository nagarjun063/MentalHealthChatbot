import 'package:bubble/bubble.dart';
import 'package:dart_sentiment/dart_sentiment.dart';
import 'package:dialogflow_flutter/googleAuth.dart';
import 'package:dialogflow_flutter/dialogflowFlutter.dart';
import 'package:dialogflow_flutter/language.dart';
import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:mentalhealthchatbot/consultants.dart';
import 'package:mentalhealthchatbot/setsofcollection.dart';
import 'package:mentalhealthchatbot/survey.dart';
import 'audiomanager.dart';
import 'videos.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController editingController = TextEditingController();

  int score = 0;
  final sentiment = Sentiment();
  final List UIList = [];
  bool wait = true;

  @override
  void initState() {
    setState(() {
      initial_messages();
    });
    super.initState();
  }

  initial_messages() {
    ChatMessage m1 = new ChatMessage(
      text: "Hey Arjun, Have a wonderful day !!",
      type: false,
    );
    ChatMessage m2 = new ChatMessage(
      text: "This is CarpeDiem, you can call me CD. I'm always up for a chat.",
      type: false,
    );
    ChatMessage m3 = new ChatMessage(
      text: "What's Up?",
      type: false,
    );
    setState(() {
      UIList.add(m1);
      UIList.add(m2);
      UIList.add(m3);
      wait = false;
    });
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
              onSubmitted: (value) {
                _handleSubmitted(value);
              },
              cursorColor: Colors.deepPurple.shade900,
              controller: editingController,
              enabled: !wait,
              decoration: InputDecoration(
                  hintText: "Type here ......",
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

  void _handleSubmitted(String text) {
    editingController.clear();
    ChatMessage message = new ChatMessage(
      text: text,
      type: true,
    );
    setState(() {
      UIList.add(message);
      score = score + int.parse(sentiment.analysis(text)["score"].toString());
      print(score);
      wait = true;
    });
    if (score <= -3) {
      ChatMessage negat1 = new ChatMessage(
        text: "Hey Arjun, you seem to be down, anything bothering you?",
        type: false,
      );
      ChatMessage negat2 = new ChatMessage(
        text:
            "I feel let's take a break here, why don't we do a small QnA session on how you feel?",
        type: false,
      );
      ChatMessage negat3 = new ChatMessage(
        text:
            "Incase you wanna talk to someone, let's get in touch with them Immediately!",
        type: false,
      );

      UIList.add(negat1);
      UIList.add(negat2);
      UIList.add(negat3);
      UIList.add(Padding(padding: EdgeInsets.only(top: 25)));
      UIList.add(Row(
        children: [
          new Padding(padding: EdgeInsets.only(left: 25)),
          new OutlinedButton(
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
                    setState(() {
                      ChatMessage qa = new ChatMessage(
                        text: "Would love a QnA Session!",
                        type: true,
                      );
                      UIList.removeLast();
                      UIList.add(qa);
                      wait = false;
                    }),
                    Future.delayed(const Duration(milliseconds: 500), () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Survey()));
                    }),
                  },
              child: Row(
                children: [
                  Icon(
                    Icons.document_scanner,
                    size: 15,
                  ),
                  Padding(padding: EdgeInsets.only(left: 3)),
                  Text(
                    "QnA Session",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              )),
          new Padding(padding: EdgeInsets.only(left: 50)),
          new OutlinedButton(
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
                    setState(() {
                      ChatMessage qa = new ChatMessage(
                        text: "Wanna talk to a conultant!",
                        type: true,
                      );
                      UIList.removeLast();
                      UIList.add(qa);
                      wait = false;
                    }),
                    Future.delayed(const Duration(milliseconds: 500), () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Consultants()));
                    }),
                  },
              child: Row(
                children: [
                  Icon(
                    Icons.people,
                    size: 15,
                  ),
                  Padding(padding: EdgeInsets.only(left: 3)),
                  Text(
                    "Consultant",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ))
        ],
      ));
    } else {
      ChatMessage typing = new ChatMessage(
        text: "Typing....",
        type: false,
      );
      UIList.add(typing);
      Response(text);
    }
  }

  void Response(query) async {
    editingController.clear();
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: "assets/credentials.json").build();
    DialogFlow dialogflow =
        DialogFlow(authGoogle: authGoogle, language: Language.english);
    AIResponse response = await dialogflow.detectIntent(query);
    ChatMessage message = new ChatMessage(
      text: response.getMessage().toString(),
      type: false,
    );
    setState(() {
      print(message);
      UIList.removeLast();
      UIList.add(message);
      wait = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        backgroundColor: Colors.deepPurple.shade900,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: new Text("Chat With CarpeDiem",
            style: TextStyle(color: Colors.white)),
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.list),
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(
                      value: 0,
                      child: Row(children: [
                        Icon(
                          Icons.document_scanner,
                          color: Colors.deepPurple.shade900,
                        ),
                        Text('QnA')
                      ])),
                  PopupMenuItem<int>(
                      value: 1,
                      child: Row(children: [
                        Icon(
                          Icons.people,
                          color: Colors.deepPurple.shade900,
                        ),
                        Text('Consult')
                      ])),
                ];
              },
              onSelected: (value) {
                if (value == 0) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Survey()));
                } else if (value == 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Consultants()));
                }
              }),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: Container(
          color: Colors.grey[200],
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
              decoration: new BoxDecoration(color: Colors.white),
              child: _buildTextComposer(),
            ),
          ])),
      //floating button
      floatingActionButton: CircularMenu(
        alignment: Alignment.centerRight,
        toggleButtonColor: Colors.deepPurple.shade900,
        items: [
          CircularMenuItem(
              icon: Icons.music_note,
              color: Colors.green,
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Player()));
                });
              }),
          CircularMenuItem(
              icon: Icons.video_collection,
              color: Colors.orange,
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SetsofVideos()));
                });
              }),
          CircularMenuItem(
              icon: Icons.troubleshoot_rounded,
              color: Colors.brown,
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SetsofCollection()));
                });
              }),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({required this.text, required this.type});

  final String text;
  final bool type;

  List<Widget> otherMessage(context) {
    return <Widget>[
      new Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Bubble(
              nip: BubbleNip.leftCenter,
              alignment: Alignment.topLeft,
              color: Colors.white,
              borderColor: Colors.white,
              // margin: const BubbleEdges.only(top: 8),
              margin: BubbleEdges.only(top: 8, left: 5),
              child: Flexible(
                  child: Text(
                text,
                textAlign: TextAlign.left,
                style:
                    TextStyle(fontSize: 15, color: Colors.deepPurple.shade900),
              )),
            ),
          ]))
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      new Expanded(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Bubble(
            nip: BubbleNip.rightTop,
            alignment: Alignment.topRight,
            margin: BubbleEdges.only(top: 8, right: 5),
            color: Colors.deepPurple.shade900,
            borderColor: Colors.deepPurple.shade900,
            // margin: const BubbleEdges.only(top: 8),
            child: Flexible(
                child: Text(
              text,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 15, color: Colors.white),
            )),
          ),
        ],
      ))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}
