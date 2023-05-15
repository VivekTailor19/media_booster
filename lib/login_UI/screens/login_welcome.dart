import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/login_UI/shared_preferencess/login_shared.dart';
import 'package:sizer/sizer.dart';

class Login_Welcome extends StatefulWidget {
  const Login_Welcome({Key? key}) : super(key: key);

  @override
  State<Login_Welcome> createState() => _Login_WelcomeState();
}

class _Login_WelcomeState extends State<Login_Welcome> {




  @override
  Widget build(BuildContext context) {

    String names = ModalRoute.of(context)!.settings.arguments as String;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [

            Align(
              alignment: Alignment(5,-0.75),
              child: CircleAvatar(
                radius: 45.w,
                backgroundColor: Color(0xff1F6AC7),
              ),
            ),
            Align(
              alignment: Alignment(1.8,-1.05),
              child: CircleAvatar(
                radius: 48.w,
                backgroundColor: Color(0xff2A8CED),
              ),
            ),
            Align(
              alignment: Alignment(2,-1.45),
              child: CircleAvatar(
                radius: 44.w,
                backgroundColor: Color(0xff38B4FE),
              ),
            ),
            Align(
              alignment: Alignment(-0.8,-0.1),
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
              alignment: Alignment(-0.5,0.3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.w,
                          color: Color(0xff1F6AC7),
                          letterSpacing: 2),
                    ),
                    Text(
                      "back",
                      style: TextStyle(
                        fontSize: 8.5.w,
                        color: Color(0xff2A8CED),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Align(alignment: Alignment(0,0.7),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Container(
                  height: 6.h,
                  width: 100.w,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "gallery");
                    },
                    child: Text(
                      "Login as $names",
                      style: TextStyle(
                          fontSize: 6.5.w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff1F6AC7),
                        Color(0xff2A8CED),
                        Color(0xff38B4FE),
                      ])),
                ),
              ),
            ),


            Align(
              alignment: Alignment(0.5, 0.95),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () async {
                      ApnaShared aps = ApnaShared();
                      Map m1 = await aps.readdata();
                      m1['gemail'] = 'sdjfsdfdfs';
                      m1['gpassword'] = 'sdjfsdfdfs';
                      Navigator.pushNamed(context, "signup");
                    },
                    child: Text(
                      "Delete account",
                      style: TextStyle(fontSize: 5.w,decoration: TextDecoration.underline,),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// top   dark   #1F6AC7
// middle       #2A8CED
// bottom light #38B4FE