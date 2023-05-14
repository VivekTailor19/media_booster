import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/login_UI/shared_preferencess/login_shared.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 1),() async {
      ApnaShared aps = ApnaShared();
      LoginModel lm = await aps.readdata();
      lm.islogin != false ? Navigator.pushNamed(context,"welcome") : Navigator.pushNamed(context,"signin");
    },);

    return SafeArea(
      child: Scaffold(
        body: Image.network("https://i.pinimg.com/originals/78/b0/cd/78b0cd62e0e19c95ec2e7f72b8fb9216.jpg",height: 100.h,width: 100.w,fit: BoxFit.fill,),
      ),
    );
  }
}
