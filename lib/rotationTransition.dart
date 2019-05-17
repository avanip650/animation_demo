import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: rotationAnimation(),

));

class rotationAnimation extends StatefulWidget {
  @override
  _rotationAnimationState createState() => _rotationAnimationState();
}

class _rotationAnimationState extends State<rotationAnimation> with SingleTickerProviderStateMixin {

  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = new AnimationController(vsync: this, duration: Duration(seconds: 5));
    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: new Stack(
        children: <Widget>[
          Center(
            child: RotationTransition(turns: animationController,
              child: Text('\u{1f60e}',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 80.0),),
            ),
          ),
        ],
      ),
    );
  }
}
