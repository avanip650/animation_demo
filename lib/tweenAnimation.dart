import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: TweenAnimation(),

));

class TweenAnimation extends StatefulWidget {
  @override
  _TweenAnimationState createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> with SingleTickerProviderStateMixin {

  Animation<double> animation;
  Tween<double> tween;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = new AnimationController(vsync: this, duration: Duration(seconds: 5));

    tween = new Tween(begin: 0.0,end: 360.0);
    animation = tween.animate(animationController);

    animation.addListener((){
      setState(() {
      });
    });
    animationController.forward();
    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: new Stack(
        children: <Widget>[

          new Positioned(child: new Material(
            child: new Icon(Icons.airport_shuttle,
            textDirection: TextDirection.ltr,
              size: 81.0,
            ),
          ),
            left: animation.value,
              top: 50.0,
          ),

        ],
      ),
    );
  }
}
