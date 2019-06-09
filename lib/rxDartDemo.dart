import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartHome extends StatefulWidget {
  @override
  _RxDartHomeState createState() => _RxDartHomeState();
}

class _RxDartHomeState extends State<RxDartHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxDart'),
      ),
      body: RxDartDemo(),
    );
  }
}

class RxDartDemo extends StatefulWidget {
  @override
  _RxDartDemoState createState() => _RxDartDemoState();
}

class _RxDartDemoState extends State<RxDartDemo> {
  PublishSubject mySubject;

  @override
  void dispose() {
    mySubject.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    mySubject = PublishSubject<String>();

    mySubject
        .map((item) => item.toUpperCase())
        .where((item) => item.length > 9)
        .debounce(Duration(milliseconds: 500))
        .listen((data) => debugPrint('${data.toString()}'));
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextField(
        onChanged: (value) {
          mySubject.add('input $value');
        },
        onSubmitted: (value) {
          mySubject.add('submit $value');
        },
        decoration: InputDecoration(
          labelText: 'title',
          filled: true,
        ),
      ),
    );
  }
}
