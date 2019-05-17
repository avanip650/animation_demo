import 'package:flutter/material.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = 140.0,
    this.height = 40.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.0,
      height: 40.0,
      decoration: BoxDecoration(gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.greenAccent
          ]),
          boxShadow: [
        BoxShadow(
          color: Colors.lightGreen[500],
          offset: Offset(0.0, 1.5),
          blurRadius: 1.5,
        ),
      ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}


class RaisedGradientButton1 extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton1({
    Key key,
    @required this.child,
    this.gradient,
    this.width = 140.0,
    this.height = 40.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.0,
      height: 40.0,
      decoration: BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            Colors.blue,
            Colors.red,
          ],
          begin: FractionalOffset.centerLeft,
          end: FractionalOffset.centerRight,
        ),
      ),
      child: Material(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(128.0)),
//        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}