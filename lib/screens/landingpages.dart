import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';

import 'SignIn.dart';
import 'browse.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return(Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: SizedBox(
                height: 300,
                width: 300,
                child: Image.network("https://www.invensis.net/blog/wp-content/uploads/2021/06/pair-programming-concept-illustration_114360-2170.jpg"),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed:(){
                print("pressed");
               Navigator.pushReplacement(context, PageTransition(
                child: Browse(),type: PageTransitionType.bottomToTop
               ));
              },
              child: Text("Browse",style: TextStyle(
                color: Colors.black,fontSize: 20),),
              ),
              MaterialButton(
              onPressed:(){
                print("pressed");
                Navigator.pushReplacement(context, PageTransition(
                child: SignIn(),type: PageTransitionType.bottomToTop
               ));
              },
              child: Text("Sign In",style: TextStyle(
                color: Colors.black,fontSize: 20),),
              )
          ],
        ),
      ),
    ));
  }
}