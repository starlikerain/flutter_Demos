import 'package:flutter/material.dart';
import 'bottomAppBarDemo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter DIY theme',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BottomAppBarDemo(),
    );
  }
}
