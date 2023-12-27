import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:myprofile/components/hidden_drawer.dart';
// import 'package:myprofile/pages/Homepage.dart';

import 'package:myprofile/pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: AnimatedSplashScreen(
            splash: Splash_Screen(), nextScreen: HiddenDrawer()));
  }
}
