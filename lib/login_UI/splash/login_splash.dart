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

    Future.delayed(Duration(seconds: 3),() async {
      ApnaShared aps = ApnaShared();
      Map m1 = await aps.readdata();

      m1['glogin'] ? Navigator.pushReplacementNamed(context,"welcome", arguments: m1['gname']) : Navigator.pushReplacementNamed(context,"signin");
    },);

    return SafeArea(
      child: Scaffold(
        body: Image.network("https://img.freepik.com/free-vector/privacy-policy-concept-illustration_114360-7853.jpg?w=740&t=st=1684137659~exp=1684138259~hmac=e67122d36b1299c8de0449f5f135b7143cfd492d5f3d4d06966a9013c436c4a2",height: 100.h,width: 100.w,fit: BoxFit.fill,),
      ),
    );
  }
}

