import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'login_UI/screens/createpage.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context) => Login_Create(),
        },
      ),
    ),
  );
}
