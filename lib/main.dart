import 'package:flutter/material.dart';
import 'package:media_booster/staggered_gallery/s_gallery_provider.dart';
import 'package:media_booster/staggered_gallery/staggered.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'login_UI/screens/createpage.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SGalleryProvider(),),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          //initialRoute: "gallery",
          routes: {
            "/":(context) => Login_Create(),
            "gallery":(context) => Staggered_Gallery(),
          },
        ),
      ),
    ),
  );
}
