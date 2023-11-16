import 'package:flutter/material.dart';
import 'choice.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mental health chatbot',
      theme: ThemeData(
       // primaryColor: Colors.yellow,
       //primaryColor: Colors(F9C6D7),
      ),
      home: MyLogin(),               //first page to be executed
    );
  }
}
