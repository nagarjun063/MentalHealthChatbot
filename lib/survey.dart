import 'package:bubble/bubble.dart';
import 'package:dart_sentiment/dart_sentiment.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealthchatbot/consultants.dart';
import 'package:mentalhealthchatbot/homepage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Survey extends StatefulWidget {
  @override
  _SurveyState createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  TextEditingController editingController = TextEditingController();

  double score = 0.0;
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
      text: "Hey Arjun, Let's begin the Quick QnA right away !!",
      type: false,
    );
    ChatMessage m2 = new ChatMessage(
      text:
          "There are some questions in this segment, you can choose the reply that suits more.",
      type: false,
    );
    setState(() {
      UIList.add(m1);
      UIList.add(m2);
      // UIList.add(m3);
      wait = false;
    });
    question1();
  }

  question1() {
    ChatMessage q1 = new ChatMessage(
      text: "Overall how would you rate your physical health?",
      type: false,
    );
    UIList.add(q1);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Excellent",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    score += 3.0;
                    wait = false;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question2();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Excellent",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Average",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question2();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Average",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Poor",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question2();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Poor",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question2() {
    ChatMessage q2 = new ChatMessage(
      text: "Overall how would you rate your mental health?",
      type: false,
    );
    UIList.add(q2);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Excellent",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 3.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question3();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Excellent",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Average",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question3();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Average",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Poor",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    //  Future.delayed(const Duration(milliseconds: 500), () {
                    question3();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Poor",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question3() {
    ChatMessage q3 = new ChatMessage(
      text:
          "During the past 4 weeks, have you had any problems with your work or daily life due to any emotional problems, such as feeling depressed, sad or anxious?",
      type: false,
    );
    UIList.add(q3);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Yes",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question4();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Yes",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "No",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    //Future.delayed(const Duration(milliseconds: 500), () {
                    question4();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "No",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Not sure",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    //Future.delayed(const Duration(milliseconds: 500), () {
                    question4();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Not sure",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question4() {
    ChatMessage q4 = new ChatMessage(
      text:
          "During the past two weeks, how often has your mental health affected your relationships?",
      type: false,
    );
    UIList.add(q4);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Very often",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question5();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Very often",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Somewhat often",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    //Future.delayed(const Duration(milliseconds: 500), () {
                    question5();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Somewhat often",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Not at all",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 3.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question5();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Not at all",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question5() {
    ChatMessage q5 = new ChatMessage(
      text: "When was the last time you were really happy?",
      type: false,
    );
    UIList.add(q5);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Few days ago",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 3.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question6();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Few days ago",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Few months ago",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    //  Future.delayed(const Duration(milliseconds: 500), () {
                    question6();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Few months ago",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Few years ago",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question6();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Few years ago",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
      ],
    ));
  }

  question6() {
    ChatMessage q6 = new ChatMessage(
      text: "Does your health limit you in doing daily activities? ",
      type: false,
    );
    UIList.add(q6);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Very less",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question7();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Very less",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Very much",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    //   Future.delayed(const Duration(milliseconds: 500), () {
                    question7();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Very much",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "No problem",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 3.0;
                    //   Future.delayed(const Duration(milliseconds: 500), () {
                    question7();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "No problem",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question7() {
    ChatMessage q7 = new ChatMessage(
      text:
          "How often have you been bothered by feeling down, depressed or hopeless?",
      type: false,
    );
    UIList.add(q7);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Not at all",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 3.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question8();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Not at all",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Several days",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    //Future.delayed(const Duration(milliseconds: 500), () {
                    question8();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Several days",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Nearly everyday",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    //Future.delayed(const Duration(milliseconds: 500), () {
                    question8();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Nearly everyday",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question8() {
    ChatMessage q8 = new ChatMessage(
      text: "Are you currently taking any medication?",
      type: false,
    );
    UIList.add(q8);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Yes",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question9();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Yes",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "No",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    //Future.delayed(const Duration(milliseconds: 500), () {
                    question9();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "No",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question9() {
    ChatMessage q9 = new ChatMessage(
      text:
          "How often have you been bothered by trouble falling or staying asleep, or sleeping too much?",
      type: false,
    );
    UIList.add(q9);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Not at all",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 3.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question10();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Not at all",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Several days",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    //Future.delayed(const Duration(milliseconds: 500), () {
                    question10();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Several days",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Nearly everyday",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question10();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Nearly everyday",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question10() {
    ChatMessage q10 = new ChatMessage(
      text:
          "How often have you been bothered by feeling tired or having little energy?",
      type: false,
    );
    UIList.add(q10);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Not at all",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 3.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question11();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Not at all",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Several days",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    //Future.delayed(const Duration(milliseconds: 500), () {
                    question11();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Several days",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Nearly everyday",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question11();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Nearly everyday",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question11() {
    ChatMessage q11 = new ChatMessage(
      text: "How often have you been bothered by poor appetite or overeating?",
      type: false,
    );
    UIList.add(q11);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Not at all",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 3.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question12();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Not at all",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Several days",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    //Future.delayed(const Duration(milliseconds: 500), () {
                    question12();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Several days",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Nearly everyday",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question12();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Nearly everyday",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question12() {
    ChatMessage q12 = new ChatMessage(
      text:
          "How often have you been bothered by feeling bad about yourself, or that you are a failure, or have let yourself or your family down?",
      type: false,
    );
    UIList.add(q12);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Not at all",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 3.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question13();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Not at all",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Several days",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    //Future.delayed(const Duration(milliseconds: 500), () {
                    question13();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Several days",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Nearly everyday",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question13();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Nearly everyday",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question13() {
    ChatMessage q8 = new ChatMessage(
      text: "Have you seen a therapist in the recent past?",
      type: false,
    );
    UIList.add(q8);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Yes",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question14();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Yes",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "No",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    //Future.delayed(const Duration(milliseconds: 500), () {
                    question14();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "No",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question14() {
    ChatMessage q14 = new ChatMessage(
      text:
          "Trouble concentrating on things, such as reading the newspaper or watching television",
      type: false,
    );
    UIList.add(q14);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Not at all",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 3.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question15();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Not at all",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Several days",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    //Future.delayed(const Duration(milliseconds: 500), () {
                    question15();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Several days",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Nearly everyday",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    question15();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Nearly everyday",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  question15() {
    ChatMessage q15 = new ChatMessage(
      text:
          "If this questionnaire has highlighted any problems, how difficult have these problems made it for you to do your work, take care of things at home, or get along with other people?",
      type: false,
    );
    UIList.add(q15);
    UIList.add(new Padding(padding: EdgeInsets.only(top: 25)));
    UIList.add(Row(
      children: [
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Not difficult at all",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 3.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    final_message();
                    // });
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Not difficult at all",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Very difficult",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 2.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    final_message();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Very difficult",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
        new Padding(padding: EdgeInsets.only(left: 15)),
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
                  setState(() {
                    ChatMessage qa = new ChatMessage(
                      text: "Extremely difficult",
                      type: true,
                    );
                    UIList.removeLast();
                    UIList.add(qa);
                    wait = false;
                    score += 1.0;
                    // Future.delayed(const Duration(milliseconds: 500), () {
                    final_message();
                    //});
                  }),
                },
            child: Row(
              children: [
                Text(
                  "Extremely difficult",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )),
      ],
    ));
  }

  final_message() {
    // String s;
    print(score);
    if (score >= 25.5) {
      Alert(
        context: context,
        type: AlertType.info,
        title: "Yaaay, Done!",
        desc: "Thanks for taking the survey, We are good here !!",
        buttons: [
          DialogButton(
            child: Text(
              "Exit",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MyHomePage())),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(116, 116, 191, 1.0),
              Color.fromRGBO(52, 138, 199, 1.0)
            ]),
          )
        ],
      ).show();
    } else {
      Alert(
        context: context,
        type: AlertType.info,
        title: "Yaaay, Done!",
        desc:
            "Thanks for taking the survey, We recommend connecting with our Consultants",
        buttons: [
          DialogButton(
            child: Text(
              "Consult",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Consultants())),
            color: Color.fromRGBO(0, 179, 134, 1.0),
          ),
          DialogButton(
            child: Text(
              "Exit",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MyHomePage())),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(116, 116, 191, 1.0),
              Color.fromRGBO(52, 138, 199, 1.0)
            ]),
          )
        ],
      ).show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        backgroundColor: Colors.deepPurple.shade900,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: new Text("QnA", style: TextStyle(color: Colors.white)),
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
          ])),
      //floating button
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
