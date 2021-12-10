import 'package:flutter/material.dart';
import 'package:great_santorini/customs/primary_color.dart';
import 'package:great_santorini/widgets/nav_bar.dart';
import 'package:splashscreen/splashscreen.dart';
class AsplashScreen extends StatefulWidget {
   @override
  _AsplashScreenState createState() => _AsplashScreenState();
}
class _AsplashScreenState extends State<AsplashScreen> {
   @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 14,
      navigateAfterSeconds: NavBar(),
      imageBackground: AssetImage("assets/gg.jpg"),
      backgroundColor: primaryColor,
    );
  }
}
