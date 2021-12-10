import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:great_santorini/widgets/splash_screen.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AsplashScreen(),
    );
  }
}
