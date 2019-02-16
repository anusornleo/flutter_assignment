import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/loginForm.dart';
import 'package:flutter_assignment/ui/mainHome.dart';
import 'package:flutter_assignment/ui/signIn.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fucku',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        accentColor: Colors.blue,
      ),
      // home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginForm(),
        "/home": (context) => MainHome(),
        "/signin": (context) => SignInForm(),
      },
    );
  }
}

class Home {
}