import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextFieldDemo(),
          ],
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          top: 2,
          left: 18,
          right: 18,
          bottom: 20,
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "我只是一个String",
          ),
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
          maxLines: 999,
          cursorColor: Colors.grey[500],
          cursorWidth: 2,
        ),
      ),
    );
  }
}
