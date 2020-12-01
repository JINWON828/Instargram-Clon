import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/Root_Page.dart';
import 'package:flutter_instagram_app/Search_Page.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch:Colors.blue,
        primaryColor: Colors.white,
        accentColor: Colors.black
      ),
      home: RootPage()
    );
  }
}
