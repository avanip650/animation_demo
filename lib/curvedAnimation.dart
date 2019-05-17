import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Curvedanimation(),

));

class Curvedanimation extends StatefulWidget {
  @override
  _CurvedanimationState createState() => _CurvedanimationState();
}

class _CurvedanimationState extends State<Curvedanimation> with SingleTickerProviderStateMixin {

  Animation<double> animation;
  Tween<double> Curved_tween;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = new AnimationController(vsync: this, duration: Duration(seconds: 5));

    CurvedAnimation curvedAnimation = new CurvedAnimation(parent: animationController, curve: Curves.bounceOut);
    Curved_tween = new Tween(begin: 150.0,end: 450.0);
    animation = Curved_tween.animate(curvedAnimation);

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
            child: new Icon(Icons.android,color: Colors.lightGreen,
              textDirection: TextDirection.ltr,size: 80.0,
            ),
          ),
            left: 50.0,
            top: animation.value,
          ),
        ],
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
