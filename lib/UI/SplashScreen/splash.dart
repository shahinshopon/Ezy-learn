import 'dart:async';
import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:ezy_learn/UI/OnboardingScreen/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // Future checkFirstSeen() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   bool _seen = (prefs.getBool('seen') ?? false);

  //   if (_seen) {
  //     Navigator.of(context).pushReplacement(
  //         new MaterialPageRoute(builder: (context) => LoginScreen()));
  //   } else {
  //     await prefs.setBool('seen', true);
  //     Navigator.of(context).pushReplacement(
  //         new MaterialPageRoute(builder: (context) => OnBoardingPage()));
  //   }
  // }

  Future check(){
    Navigator.push(context, CupertinoPageRoute(builder: (context)=>OnboardingScreen()));
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    new Timer(new Duration(seconds: 3), () {
      //checkFirstSeen();
     check();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: SizeConfig.safeBlockVertical*50,
            width: SizeConfig.safeBlockHorizontal*50,
            child: Image.asset(
              "logo.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}