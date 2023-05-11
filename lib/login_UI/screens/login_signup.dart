import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Login_SignUp extends StatefulWidget {
  const Login_SignUp({Key? key}) : super(key: key);

  @override
  State<Login_SignUp> createState() => _Login_SignUpState();
}

class _Login_SignUpState extends State<Login_SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment(1.8, -1.7),
              child: CircleAvatar(
                radius: 40.w,
                backgroundColor: Color(0xff38B4FE),
              ),
            ),
            Align(
              alignment: Alignment(-4, -1.6),
              child: CircleAvatar(
                radius: 44.w,
                backgroundColor: Color(0xff2A8CED),
              ),
            ),
            Align(
              alignment: Alignment(-5, -1.67),
              child: CircleAvatar(
                radius: 42.5.w,
                backgroundColor: Color(0xff1F6AC7),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.7),
              child: CircleAvatar(
                radius: 20.w,
                backgroundColor: Colors.white,
                child: Transform.rotate(
                    angle: 0,
                    child: FlutterLogo(
                      size: 25.w,
                    )),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.12),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30.w,
                      // color: Colors.red,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                        Text(
                          "Create",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.w,
                              color: Color(0xff1F6AC7),
                              letterSpacing: 2),
                        ),
                        Text(
                          "account",
                          style: TextStyle(
                            fontSize: 10.w,
                            color: Color(0xff2A8CED),
                          ),
                        ),
                      ],
                    )),
                    SizedBox(
                      height: 2.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "E-mail",
                          hintStyle: TextStyle(fontSize: 20),
                          suffixIcon: Icon(
                            Icons.mail_outline_rounded,
                            color: Color(0xff2A8CED),
                          )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(fontSize: 20),
                          suffixIcon: Icon(
                            Icons.lock_rounded,
                            color: Color(0xff2A8CED),
                          )),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 6.h,
                      width: 79.5.w,
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 6.5.w,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color(0xff1F6AC7),
                        Color(0xff2A8CED),
                        Color(0xff38B4FE),
                      ])),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.5, 0.95),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have account?",
                    style: TextStyle(fontSize: 5.w),
                  ),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 5.w,
                      decoration: TextDecoration.underline,
                    ),
                  )
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
