import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                InkWell(
                  onTap: () => Navigator.pushNamed(context, "login"),
                  child: Apna_Tab("Login UI")),

                InkWell(
                  onTap: () => Navigator.pushNamed(context, "gallery"),
                  child: Apna_Tab("Straggered Gallery UI")),

                InkWell(
                  onTap: () => Navigator.pushNamed(context, "intro"),
                  child: Apna_Tab("Introduction Screen")),


    ]
    ,
    )
    ,
    )
    ,
    );
  }

  Widget Apna_Tab(String title) {
    return Container(
      height: 90,
      width: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
          color: Colors.amber.shade900),
      child: Text(
        "$title", style: TextStyle(color: Colors.white, fontSize: 18),),
    );
  }
}
