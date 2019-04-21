import 'package:flutter/material.dart';
import 'navigationWidget.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter button navigateBar',
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}

