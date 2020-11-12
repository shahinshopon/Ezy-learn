import 'package:ezy_learn/Custom%20Widget/createaccountpagecontainer.dart';
import 'package:ezy_learn/Custom%20Widget/textfieldwidget.dart';
import 'package:ezy_learn/Custom%20Widget/welcomebutton.dart';
import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:ezy_learn/UI/ParentsSection/parents_homepage.dart';
import 'package:ezy_learn/UI/SignUp/parents_signup.dart';
import 'package:ezy_learn/UI/SignUp/student_signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ParentsLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
                  child: Column(
            children: [
              CreateAccountPageContainer(() {
                Navigator.pop(context);
              }, "parents-login.png"),
              Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.safeBlockHorizontal * 5,
                    right: SizeConfig.blockSizeHorizontal * 5,
                    top: SizeConfig.safeBlockHorizontal * 6),
                child: Column(
                  children: [
                    Text(
                      "Login",
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
                      "Enter your login information to sign in to your account",
                      textAlign: TextAlign.center,
                      
                      style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.safeBlockHorizontal * 4,
                        color: Color(0xff412e3c).withOpacity(0.65),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical * 2,
                    ),
                    TextfieldWidget("User name"),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical * 1,
                    ),
                    TextfieldWidget("********"),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical * 2,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                                        child: new Text(
                        "Forgot your password?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Segoe UI",
                          fontSize:SizeConfig.safeBlockHorizontal*4,
                          color: Color(0xfff4643c),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical *15,
                    ),
                    ReuseableWelcomeButton(
                      "Login As Parents",
                      Color(0xff3F2E3F),
                      () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ParentsHomepage()));
                      },
                      SizeConfig.safeBlockHorizontal * 5,
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical * 1,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontSize: SizeConfig.safeBlockHorizontal * 4,
                                color: Colors.black),
                            children: [
                          TextSpan(
                              text: "Create now",
                              style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                  color: Color(0xffF4643C)),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) => ParentsSignup()));
                                })
                        ]))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
