import 'package:animation_demo/3Dflipanimation.dart';
import 'package:animation_demo/RaisedGradiantButton.dart';
import 'package:animation_demo/crossfadeAnimation.dart';
import 'package:animation_demo/curvedAnimation.dart';
import 'package:animation_demo/rotationTransition.dart';
import 'package:animation_demo/scaletransition.dart';
import 'package:animation_demo/tweenAnimation.dart';
import 'package:flutter/material.dart';
import 'handlingAnimationstatusevent.dart';

//opacity Animation

void main()=> runApp(MaterialApp(
  home: AnimationDemo(),
));

class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> {

  double opacityLevel = 0.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: Duration(seconds: 3),
              child: FlutterLogo(size: 100,),
            ),
            RaisedButton(
                child: Text('AnimatedOpacity'),
                color:  Colors.limeAccent,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.red,style: BorderStyle.solid)),
                onPressed: _changeOpacity,
                animationDuration: Duration(seconds: 4),
            ),
            RaisedGradientButton(
              child: Text('Scale Transition',style: TextStyle(fontSize: 15,color: Colors.white)),
              onPressed: (){
              Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new Scaletransition()));
              },
            ),
            Container(
              margin: EdgeInsets.all(5.0),
            ),
            RaisedGradientButton1(
              child: Text('Curved Animation'),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Curvedanimation()));
              },
            ),
            Container(
              margin: EdgeInsets.all(5.0),
            ),
            FlatButton(
              child: Text('Forward Backward'),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new HandlingAnimationStatusEvent()));
              },
            ),
            OutlineButton(
              borderSide: BorderSide(color: Colors.orange),
              child: Text('Forward Animation'),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new TweenAnimation()));
              },
            ),
            Opacity(opacity: 0.5,
            child: RaisedButton(
              color: Colors.indigoAccent,
              child: Text('RotationTransition',style: TextStyle(fontSize: 15,color: Colors.white)),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new rotationAnimation()));
              },
            ),
            ),
            RaisedButton(
              child: Text('3D Flip Animation'),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new MyHomePage()));
              },
            ),
            RaisedButton(
              child: Text('CrossFadeAnimation'),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new CroosFadeAnimation()));
              },
            ),
          ],
        ),
      )
    );
  }
}
