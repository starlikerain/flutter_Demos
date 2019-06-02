import 'package:flutter/material.dart';
import 'package:flutter_fucked_world/bodyPage.dart';
import 'package:flutter_fucked_world/drawerPage.dart';
import 'package:flutter_fucked_world/textFieldPage.dart';

class HomeIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('莫比啊'),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          IndexBody(),
          TextFieldPage(),
        ],
      ),
      drawer: DrawerPage(),
    );
  }
}
