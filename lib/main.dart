import 'package:flutter/material.dart';
import 'Screens/Intro.dart';
import 'Screens/Home.dart';
import 'Screens/LogIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        backgroundColor: Colors.white,
        primarySwatch: Colors.amber,
      ),
      home: OnBoardingPage(),
      routes: {
        '/Home': (context) => MyHomePage(),
        '/Login': (context) => Login(),
      }, //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
