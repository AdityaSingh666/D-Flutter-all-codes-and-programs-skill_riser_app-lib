import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.phone_android,
                size: 50,
              ),
             SizedBox(height: 10,),
            Text("Hello Again!",
            style: GoogleFonts.bebasNeue(
              fontSize: 50,
            )),
            SizedBox(height: 20,),
            Text("By using our services you are agreeing to our terms and Prinvacy Statment",
            style: TextStyle(fontSize: 13),
            ),
            SizedBox(height: 50),
             
             //Email TextField

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(decoration: BoxDecoration(
                color: Colors.grey.shade300,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Your Email"
                  ),
                ),
              ),
              ),
            ),
            SizedBox(height: 10),
            
            // Password TextField

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(decoration: BoxDecoration(
                color: Colors.grey.shade300,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Your Password"
                  ),
                ),
              ),
              ),
            ),

            // Sign IN 

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.blue,
                borderRadius: BorderRadius.circular(20)),
                child: Center(child: Text("Sign In",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Colors.white),
                
                )),
                ),
            ),

            // Not a Member
             SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Not a Member?",style: TextStyle(fontWeight: FontWeight.bold)),
                 Text(" Registor Now",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
               ],
             )
          ],
          ),
        ),
      )
    );
  }
}