

import 'dart:async';

import 'package:dhopa_app/Screens/OnBoardingScreen.dart';
import 'package:flutter/material.dart';




class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), openOnBoard);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(

            image: AssetImage("assets/images/bg.png")
          )
        ),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height/5,
            width: MediaQuery.of(context).size.width/3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo.png")
              )
            ),
          ),
        ),
      )
    );
  }
  void openOnBoard(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnBoardingScreen()));
  }
}
