import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Scaletransition(),

));

class Scaletransition extends StatefulWidget {
  @override
  _ScaletransitionState createState() => _ScaletransitionState();
}

class _ScaletransitionState extends State<Scaletransition> with SingleTickerProviderStateMixin {

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
        children: [
          Center(
            child:
              Container(
                  child: ScaleTransition(scale: animationController,
                    child: Text('\u{1F470}',textDirection: TextDirection.ltr,style: TextStyle(fontSize: 80.0),
                    ),)
              ),
          ),
        ],
      ),
    );
  }
}
