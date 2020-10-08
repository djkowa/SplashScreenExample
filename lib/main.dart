import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'dart:async';

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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreenPage(),
    );
  }
}

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
        Duration(
          seconds: 2,
        ), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MainScreenPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FlutterLogo(
            size: 300.0,
          ),
        ),
      ),
    );
  }
}

class MainScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Main Screen',
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
