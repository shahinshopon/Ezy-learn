import 'dart:ui';
import 'package:ezy_learn/Custom%20Widget/createaccountpagecontainer.dart';
import 'package:ezy_learn/Custom%20Widget/textfieldwidget.dart';
import 'package:ezy_learn/Custom%20Widget/welcomebutton.dart';
import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:ezy_learn/UI/LogIn/parentslogin.dart';
import 'package:ezy_learn/UI/LogIn/studentlogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ParentsSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF9F7),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CreateAccountPageContainer(
              (){
                Navigator.pop(context);
              },
              "parents-login.png"
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.safeBlockHorizontal * 5,
                  right: SizeConfig.blockSizeHorizontal * 5,
                  top: SizeConfig.safeBlockHorizontal * 5),
              child: Column(
                children: [
                  new Text(
                    "Create Account",
                    style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.safeBlockHorizontal * 7,
                      color: Color(0xff412e3c).withOpacity(0.90),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  new Text(
                    "Enter your information below \nto create new account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.safeBlockHorizontal * 4,
                      color: Color(0xff412e3c).withOpacity(0.65),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  TextfieldWidget("Enter your name"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  TextfieldWidget("Enter your school ID"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  TextfieldWidget("Enter your email"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  TextfieldWidget("********"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  ReuseableWelcomeButton(
                    "Create Account",
                    Color(0xff3F2E3F),
                    () {
                      //Navigator.push(context, CupertinoPageRoute(builder: (context)=>TeacherLogin()));
                    },
                    SizeConfig.safeBlockHorizontal * 5,
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  RichText(
                    text: TextSpan(
                     
                      text:  "Already have an account?",
                       style: TextStyle(
                          fontFamily: "Segoe UI",
                          fontSize: SizeConfig.safeBlockHorizontal*4,
                          color: Colors.black),
                          children: [
                            TextSpan(
                               text:  "Login now",
                       style: TextStyle(
                          fontFamily: "Segoe UI",
                          fontSize: SizeConfig.safeBlockHorizontal*5,
                          color: Color(0xffF4643C)),
                          recognizer: TapGestureRecognizer(

                          )..onTap=(){
                           Navigator.push(context, CupertinoPageRoute(builder: (context)=>ParentsLogin()));
                          }
                            )
                          ]
                      
                    ))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}


  