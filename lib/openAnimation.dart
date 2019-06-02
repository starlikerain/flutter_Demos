import 'package:flutter/material.dart';
import 'package:flutter_fucked_world/homeIndex.dart';

class OpenAnimation extends StatefulWidget {
  @override
  OopenAnimationState createState() => OopenAnimationState();
}

class OopenAnimationState extends State<OpenAnimation> with SingleTickerProviderStateMixin {
  AnimationController _controler;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controler = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controler);

    // 动画状态完成，就到正式的 index 页面去
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {
          return HomeIndex();
        }), (route) => route == null);
      }
    });

    _controler.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //      child: Text('12'),
      child: FadeTransition(
        opacity: _controler,
        child: Image.asset(
          "images/flutter_begin.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
