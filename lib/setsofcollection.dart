import 'package:flutter/material.dart';
import 'collectionpage.dart';
import 'globals.dart' as globals;

class SetsofCollection extends StatefulWidget {
  @override
  _SetsofCollectionState createState() => _SetsofCollectionState();
}

class _SetsofCollectionState extends State<SetsofCollection> {
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
    for (var i = 0; i <= globals.collections.length - 1; i++) {
      if (i + 1 != globals.collections.length) {
        UIList.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 175,
                width: 200,
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
                    print(globals.collections[i - 1]),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CollectionPage(globals.collections[i - 1])),
                    )
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.,
                    children: [
                      Icon(
                        Icons.dashboard_customize,
                        size: 50,
                      ),
                      new Text(
                        globals.collections[i],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 175,
                width: 200,
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
                          builder: (context) =>
                              CollectionPage(globals.collections[i])),
                    )
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.,
                    children: [
                      Icon(
                        Icons.dashboard_customize,
                        size: 50,
                      ),
                      new Text(
                        globals.collections[i + 1],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
        i = i + 1;
      } else {
        UIList.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 175,
                width: 200,
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
                          builder: (context) =>
                              CollectionPage(globals.collections[i])),
                    )
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.,
                    children: [
                      Icon(
                        Icons.dashboard_customize,
                        size: 50,
                      ),
                      new Text(
                        globals.collections[i],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
      UIList.add(Padding(padding: EdgeInsets.all(16.0)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade900,
        title: new Text("Articles", style: TextStyle(color: Colors.white)),
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
