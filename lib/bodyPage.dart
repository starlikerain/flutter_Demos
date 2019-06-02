import 'package:flutter/material.dart';

var primaryColor = Colors.blue[600];

class IndexBody extends StatefulWidget {
  @override
  _IndexBodyState createState() => _IndexBodyState();
}

class _IndexBodyState extends State<IndexBody> {
  final primaryLanguage = '英文';
  final secondLanguage = '中文（简体）';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, //                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      primaryLanguage,
                      style: TextStyle(color: primaryColor),
                    ),
                    ImageIcon(
                      AssetImage("images/moreinfo.png"),
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Material(
            child: IconButton(
              icon: Icon(
                Icons.compare_arrows,
                color: primaryColor,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, //                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      secondLanguage,
                      style: TextStyle(color: primaryColor),
                    ),
                    ImageIcon(
                      AssetImage("images/moreinfo.png"),
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
