import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Login_Create extends StatefulWidget {
  const Login_Create({Key? key}) : super(key: key);

  @override
  State<Login_Create> createState() => _Login_CreateState();
}

class _Login_CreateState extends State<Login_Create> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(

          children: [
            Align(
              alignment: Alignment(1.8,-1.7),
              child: CircleAvatar(
                radius:40.w,
                backgroundColor: Color(0xff38B4FE),),
            ),
            Align(
              alignment: Alignment(-4,-1.6),
              child: CircleAvatar(
                radius:44.w,
                backgroundColor: Color(0xff2A8CED),),
            ),
            Align(
              alignment: Alignment(-5,-1.67),
              child: CircleAvatar(
                radius:42.5.w,
                backgroundColor: Color(0xff1F6AC7),),
            ),
            Align(
              alignment: Alignment(0,-0.7),
              child: CircleAvatar(
                radius: 20.w,
                backgroundColor: Colors.white,
                child: Transform.rotate(
                    angle: 0,
                    child: FlutterLogo(size: 25.w,)),
              ),
            ),
            Align(
              alignment: Alignment(0,-0.15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Create",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60,color: Color(0xff1F6AC7),letterSpacing: 2),),
                  Text("account",style: TextStyle(fontSize:33,color: Color(0xff2A8CED),),),
                  SizedBox(height: 2.h,),
                  Text("data"),
                  TextField(
                    decoration: InputDecoration(

                    ),
                  ),
                ],

              ),
            ),
            Align(
              alignment: Alignment(0.5,0.9),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have account?",style: TextStyle(fontSize: 4.5.w),),
                  SizedBox(width: 1.5.w,),
                  Text("Sign in",style: TextStyle(color: Colors.blue,fontSize: 4.5.w),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// top   dark   #1F6AC7
// middle       #2A8CED
// bottom light #38B4FE