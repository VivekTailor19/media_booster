import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/login_UI/shared_preferencess/login_shared.dart';
import 'package:sizer/sizer.dart';

class Login_Splash extends StatefulWidget {
  const Login_Splash({Key? key}) : super(key: key);
  @override
  State<Login_Splash> createState() => _Login_SplashState();
}

class _Login_SplashState extends State<Login_Splash> {

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 3),() async {

      ApnaShared aps = ApnaShared();
      Map m1 = await aps.readdata();

      m1['getted'] == true ?
      Navigator.pushReplacementNamed(context,"welcome", arguments: m1['gname'])
      :Navigator.pushReplacementNamed(context,"signin");


    },);

    return SafeArea(
      child: Scaffold(
        body: Center(child: Image.network("https://img.freepik.com/free-vector/low-code-development-concept-illustration_114360-7474.jpg?w=826&t=st=1684402241~exp=1684402841~hmac=a2edfb4e1ec18c0a329270da40a958fc7d7b06b0a315d427dbbf25bdfb6440b1",)),
      ),
    );
  }
}

