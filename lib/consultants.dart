import 'package:flutter/material.dart';
import 'package:mentalhealthchatbot/schedule.dart';
import 'collectionpage.dart';
import 'globals.dart' as globals;

class Consultants extends StatefulWidget {
  @override
  _ConsultantsState createState() => _ConsultantsState();
}

class _ConsultantsState extends State<Consultants> {
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
    UIList.add(Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      SizedBox(
        height: 100,
        width: 350,
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
              if (states.contains(MaterialState.hovered)) return Colors.white;
              return Colors.deepPurple.shade900;
            }),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) return Colors.white;
              return Colors.deepPurple.shade900;
            }),
          ),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CalendarApp()))
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              CircleAvatar(
                radius: 35.0,
                backgroundImage: NetworkImage(
                    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50"),
              ),
              new Text(
                "Dr Stephen",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    ]));
    UIList.add(Padding(padding: EdgeInsets.only(top: 50)));
    UIList.add(Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      SizedBox(
        height: 100,
        width: 350,
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
              if (states.contains(MaterialState.hovered)) return Colors.white;
              return Colors.deepPurple.shade900;
            }),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) return Colors.white;
              return Colors.deepPurple.shade900;
            }),
          ),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CalendarApp()))
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              CircleAvatar(
                radius: 35.0,
                backgroundImage: NetworkImage(
                    "https://avatars0.githubusercontent.com/u/8264639?s=460&v=4"),
              ),
              new Text(
                "Dr Tim",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    ]));
    UIList.add(Padding(padding: EdgeInsets.only(top: 50)));
    UIList.add(Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      SizedBox(
        height: 100,
        width: 350,
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
              if (states.contains(MaterialState.hovered)) return Colors.white;
              return Colors.deepPurple.shade900;
            }),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) return Colors.white;
              return Colors.deepPurple.shade900;
            }),
          ),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CalendarApp()))
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              CircleAvatar(
                radius: 35.0,
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/3674348?v=4"),
              ),
              new Text(
                "Dr Tony",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    ]));
    UIList.add(Padding(padding: EdgeInsets.only(top: 50)));
    UIList.add(Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      SizedBox(
        height: 100,
        width: 350,
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
              if (states.contains(MaterialState.hovered)) return Colors.white;
              return Colors.deepPurple.shade900;
            }),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) return Colors.white;
              return Colors.deepPurple.shade900;
            }),
          ),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CalendarApp()))
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              CircleAvatar(
                radius: 35.0,
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/11391037?v=4"),
              ),
              new Text(
                "Dr Natasha",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
            ],
          ),
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
        title: new Text("Consultants", style: TextStyle(color: Colors.white)),
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
