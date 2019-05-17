import 'package:flutter/material.dart';

 class CroosFadeAnimation extends StatefulWidget {
   @override
   _CroosFadeAnimationState createState() => _CroosFadeAnimationState();
 }

 class _CroosFadeAnimationState extends State<CroosFadeAnimation> {

   var _isFirstCrossFadeEnabled = true;

   @override
   Widget build(BuildContext context) {
     return AnimatedCrossFade(
         duration: Duration(seconds: 2),
         firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal,size: 100.0,),
         secondChild: Container(
           child: Image.asset("images/appleicon.png"),
           height: 200.0,
           width: 200.0,
         ),
         crossFadeState: _isFirstCrossFadeEnabled ? CrossFadeState.showFirst : CrossFadeState.showSecond,
     );
   }
 }
