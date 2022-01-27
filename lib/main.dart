import 'package:flutter/material.dart';
import 'package:sample/views/circle_page.dart';
import 'package:sample/views/curve_page.dart';
import 'package:sample/views/homepage.dart';
import 'package:sample/views/rect_page.dart';
import 'package:sample/views/smiley.dart';
import 'package:sample/views/triangle_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SmileyPage(),
    );
  }
}
