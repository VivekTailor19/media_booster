import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:media_booster/introduction/intro_splash.dart';
import 'package:media_booster/staggered_gallery/s_gallery_provider.dart';
import 'package:media_booster/staggered_gallery/staggered.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'introduction/intro.dart';
import 'introduction/intro_provider.dart';
import 'login_UI/screens/login_signin.dart';
import 'login_UI/screens/login_signup.dart';
import 'login_UI/screens/login_welcome.dart';
import 'login_UI/splash/login_splash.dart';

void main() {
  runApp(

          Sizer(
            builder: (context, orientation, deviceType) => MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (context) => SGalleryProvider(),),
                ChangeNotifierProvider(create: (context) => IntroProvider(),),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
               // initialRoute: "intro_splash",
                routes: {
                  //"/":(context) => Login_SignIn(),
                  "splash":(context) => SplashScreen(),
                  "signup":(context) => Login_SignUp(),
                  "signin":(context) => Login_SignIn(),
                  "welcome":(context) => Login_Welcome(),
                  "gallery":(context) => Staggered_Gallery(),
                  "intro":(context) => Intro_Screen(),

                  "intro_splash":(context) => Intro_Splash(),
                   "/":(context) => Intro_Splash(),
                },
              ),
            ),
        ),


  );

}
