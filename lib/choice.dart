import 'package:flutter/material.dart';
import 'homepage.dart';
import 'register.dart';

class MyLogin extends StatefulWidget {
  //const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override

  //TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/login.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(right: 35, left: 35, top: 15),
            child: Column(children: [
              Padding(padding: EdgeInsets.only(top: 25)),
              Text(
                "Hey There !!",
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
              Image.asset('assets/images/mainbot.png'),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(style: BorderStyle.none)),
                      ),
                      onPressed: () => {
                            print(emailController.text),
                            print(passwordController.text),
                            if (emailController.text == 'a' &&
                                passwordController.text == 'b')
                              {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyHomePage())),
                              }
                            else
                              {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    //print('Not valid');
                                    return AlertDialog(
                                      title: Text("Alert Message"),
                                      // Retrieve the text which the user has entered by
                                      // using the TextEditingController.
                                      content: Text('Wrong credentials'),
                                      actions: <Widget>[
                                        new ElevatedButton(
                                          child: new Text('OK'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        )
                                      ],
                                    );
                                  },
//extra
                                ),
                                //extra
                              }
                          },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                  OutlinedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(style: BorderStyle.none)),
                      ),
                      onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyRegister()),
                            )
                          },
                      child: Text(
                        "SignUp",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ))
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
