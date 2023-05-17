import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:media_booster/introduction/intro_provider.dart';
import 'package:media_booster/introduction/intro_shared.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class Intro_Screen extends StatefulWidget {
  const Intro_Screen({Key? key}) : super(key: key);

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

class _Intro_ScreenState extends State<Intro_Screen> {

  IntroProvider? ipT;
  IntroProvider? ipF;
  @override
  Widget build(BuildContext context) {

    ipT = Provider.of<IntroProvider>(context);
    ipF = Provider.of<IntroProvider>(context,listen:false);

    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: [
            PageViewModel(
                title: "Welcome to Surf.",
                body:"I provide essential stuff for your ui designes every tuesday!",
                image: Image.asset("assets/images/intro (1).png"),
            ),
            PageViewModel(
                title: "Design Template uploads Every Tuesday!",
                body: "Make sure to take a look my uplab profile every tuesday",
                image: Image.asset("assets/images/intro (2).png"),
            ),
            PageViewModel(
                title: "Download now!",
                body: "You can follow me if you wanted commment on any to get some freebies",
                image: Image.asset("assets/images/intro (3).png"),
            ),
          ],
          showNextButton: true,
          showSkipButton: true,
          showDoneButton: true,
          done: Text("Get Started"),
          onDone: () {

            IntroShared ishare = IntroShared();
            ishare.setData(setdata: true);
            Navigator.pushReplacementNamed(context, "gallery");
          },
          skip: Text("Skip"),
          next: Text("Next"),







        ),
      ),
    );
  }
}
