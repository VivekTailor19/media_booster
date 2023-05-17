import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/introduction/intro_shared.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'intro_provider.dart';

class Intro_Splash extends StatefulWidget {
  const Intro_Splash({Key? key}) : super(key: key);

  @override
  State<Intro_Splash> createState() => _Intro_SplashState();
}

class _Intro_SplashState extends State<Intro_Splash> {

  IntroProvider? ipT;
  IntroProvider? ipF;

  @override
  Widget build(BuildContext context) {

    ipT = Provider.of<IntroProvider>(context);
    ipF = Provider.of<IntroProvider>(context,listen:false);

    Future.delayed(Duration(seconds: 3),() async {

      IntroShared ishare = IntroShared();
      Map mskipped = await ishare.readData();

      mskipped["getted"] == true ?
      Navigator.pushReplacementNamed(context, "gallery") :
      Navigator.pushReplacementNamed(context, "intro")
      ;
    },);


    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset(
            "assets/images/tourism.png",
            height: 50.h,
            width: 85.w,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
