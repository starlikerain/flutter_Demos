import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('accountEmail@qq.com'),
            accountName: Text('StarLikeRain'),
            currentAccountPicture: null,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/avatar_background.jpg"),
              ),
            ),
          ),
          ListTile(
            title: Text('首页'),
            leading: Icon(CupertinoIcons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text('翻译收藏夹'),
            leading: Icon(CupertinoIcons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text('离线翻译'),
            leading: Icon(CupertinoIcons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text('设置'),
            leading: Icon(CupertinoIcons.home),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
