import 'package:flutter/material.dart';
import 'forsted_glass_effect.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter 毛玻璃效果制作',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: ForstedGlassEffect(),
      ),
    );
  }
}
