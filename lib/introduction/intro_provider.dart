import 'package:flutter/widgets.dart';

import 'intro_model.dart';

class IntroProvider extends ChangeNotifier
{
  int currentposititon = 0;

  List<IntroModel> datas = [
    IntroModel(image: "assets/images/intro (1).png",title: "Welcome to Surf.", data: "I provide essential stuff for your ui designes every tuesday!" ),
    IntroModel(image: "assets/images/intro (2).png",title: "Design Template uploads Every Tuesday!", data: "Make sure to take a look my uplab profile every tuesday" ),
    IntroModel(image: "assets/images/intro (3).png",title: "Download now!", data:  "You can follow me if you wanted commment on any to get some freebies"),
  ];
}
