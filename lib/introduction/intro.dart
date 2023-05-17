import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Intro_Screen extends StatefulWidget {
  const Intro_Screen({Key? key}) : super(key: key);

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

class _Intro_ScreenState extends State<Intro_Screen> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Image.asset("",height: 25.h,width: 80.w,fit: BoxFit.fill,color: Colors.orange,),
              SizedBox(height: 10.h,),
              Text("big Text",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 7.h,),


            ],
          ),
        ),

      ),
    );
  }
}
