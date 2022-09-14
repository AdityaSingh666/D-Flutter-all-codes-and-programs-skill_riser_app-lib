import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';

import '../screens/landingpages.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
 
 @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context, PageTransition(child: LandingPage(), type: PageTransitionType.rightToLeftWithFade))
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return(Scaffold(
      body: Container(
        child: Center(child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Image.network("https://skillrisers.com/logo.png"),
          ),
          Padding(padding: EdgeInsets.only(top: 100),
          child: CircularProgressIndicator(backgroundColor: Colors.black),
          )
         ],
        )),
      ),
      backgroundColor: Colors.black
    )
   );
  }
}