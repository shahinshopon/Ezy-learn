import 'dart:ui';
import 'package:ezy_learn/Custom%20Widget/custompainter.dart';
import 'package:ezy_learn/Custom%20Widget/welcomebutton.dart';
import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:ezy_learn/UI/SignUp/parents_signup.dart';
import 'package:ezy_learn/UI/SignUp/student_signup.dart';
import 'package:ezy_learn/UI/SignUp/teacher_signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WellcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              child: CustomPaint(
                //You can Replace this with your desired WIDTH and HEIGHT
                size: Size(SizeConfig.screenWidth, SizeConfig.screenHeight / 3),
                painter: RPSCustomPainter(),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.safeBlockHorizontal * 6,
                    right: SizeConfig.safeBlockHorizontal * 3,
                    top: SizeConfig.safeBlockHorizontal * 3,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                        Navigator.pop(context);
                      },
                            child: Icon(Icons.arrow_back_ios)),
                          Image.asset("welcome-logo.png")
                        ],
                      ),
                      new Text(
                        "Welcome!",
                        style: TextStyle(
                          fontFamily: "Segoe UI",
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.safeBlockHorizontal * 8,
                          color: Color(0xff3c2e3c),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.safeBlockHorizontal,
                      ),
                      new Text(
                        "Drag upward to select anyone",
                        style: TextStyle(
                          fontFamily: "Segoe UI",
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.safeBlockHorizontal * 4,
                          color: Color(0xff3c2e3c),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Container(
              width: SizeConfig.screenWidth,
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 5,
                  ),
                  new Text(
                    "Are you a ?",
                    style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontSize: SizeConfig.safeBlockHorizontal * 9,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 5,
                  ),
                  ReuseableWelcomeButton(" Student",
                Color(0xffFFB915),
                   () {
                   Navigator.push(context, CupertinoPageRoute(builder: (context)=>StudentSignup()));
                  },
                  SizeConfig.safeBlockHorizontal*8,
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  ReuseableWelcomeButton(" Teacher", 
                  

                  Color(0xffFFB915),
                  () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>TeacherSignup()));
                  },
                  SizeConfig.safeBlockHorizontal*8,
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  ReuseableWelcomeButton(" Parents",
                  Color(0xffFFB915),
                   () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>ParentsSignup()));
                  },
                  SizeConfig.safeBlockHorizontal*8,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
