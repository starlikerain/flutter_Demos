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
            IconAndHintArea(),
          ],
        ),
      ),
    );
  }
}

class IconAndHintArea extends StatefulWidget {
  @override
  _IconAndHintAreaState createState() => _IconAndHintAreaState();
}

class _IconAndHintAreaState extends State<IconAndHintArea> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ActionButton(title: '相机', icon: Icons.add),
        ActionButton(title: '相机', icon: Icons.add),
        ActionButton(title: '相机', icon: Icons.add),
        ActionButton(title: '相机', icon: Icons.add),
      ],
    );
  }
}

class ActionButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final AssetImage image;
  ActionButton({Key key, @required this.title, this.icon, this.image}) : super(key: key);

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      padding: EdgeInsets.only(
        top: 2,
        left: 10,
        right: 10,
        bottom: 2,
      ),
      child: Column(
        children: <Widget>[
          _myAboveIcon(),
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _myAboveIcon() {
    if (widget.icon != null) {
      return Icon(
        widget.icon,
        color: Color(0xff3f51b5),
        size: 25,
      );
    } else if (widget.image != null) {
      return ImageIcon(
        widget.image,
        color: Color(0xff3f51b5),
        size: 25,
      );
    }
    return null;
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
