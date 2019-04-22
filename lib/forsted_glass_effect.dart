import 'package:flutter/material.dart';
import 'dart:ui';

class ForstedGlassEffect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(constraints: const BoxConstraints.expand(), child: Image.network("https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2959708265,3856768320&fm=58&bpow=705&bpoh=675")),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: const BoxDecoration(color: Colors.grey),
                    child: Center(
                      child: Text(
                        '内容文字',
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
