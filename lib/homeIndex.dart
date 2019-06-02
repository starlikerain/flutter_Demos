import 'package:flutter/material.dart';
import 'package:flutter_fucked_world/drawerPage.dart';

class HomeIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('莫比啊'),
      ),
      body: Center(
        child: Text('中间的内容区域'),
      ),
      drawer: DrawerPage(),
    );
  }
}
