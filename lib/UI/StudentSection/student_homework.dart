import 'dart:math';

import 'package:ezy_learn/Custom%20Widget/custompainter.dart';
import 'package:ezy_learn/Custom%20Widget/homeworkpagecard.dart';
import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';

class StudentHomework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
              child: Column(
          children: [
            Container(
              height: SizeConfig.safeBlockVertical * 35,
              child: CustomPaint(
                //You can Replace this with your desired WIDTH and HEIGHT
                size: Size(SizeConfig.screenWidth, SizeConfig.screenHeight / 2),
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
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios)),
                          Transform.rotate(
                              angle: pi / 180 * 150,
                              child: Image.asset("big-circle.png"))
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.safeBlockHorizontal * 1,
                      ),
                      new Text(
                        "Homework",
                        style: TextStyle(
                          fontFamily: "Segoe UI",
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.safeBlockHorizontal * 9,
                          color: Color(0xff3c2e3c),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.safeBlockHorizontal * 2,
                      ),
                      new Text(
                        "Finish your homework before date",
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
            HomeworkPageCard(
              "English literature",
              "Reading of chapter 1",
               "09"
            ),
            SizedBox(height: SizeConfig.safeBlockVertical*1.5,),
            HomeworkPageCard(
              "Mathematics",
              "Practice exercise 9.8 from chap 9",
               "13"
            ),
            SizedBox(height: SizeConfig.safeBlockVertical*1.5,),
            HomeworkPageCard(
              "English literature",
              "Reading of chapter 1",
               "09"
            ),
            SizedBox(height: SizeConfig.safeBlockVertical*1.5,),
            HomeworkPageCard(
              "Mathematics",
              "Practice exercise 9.8 from chap 9",
               "13"
            ),
            SizedBox(height: SizeConfig.safeBlockVertical*1.5,),
            HomeworkPageCard(
              "English literature",
              "Reading of chapter 1",
               "09"
            ),
            SizedBox(height: SizeConfig.safeBlockVertical*1.5,),
            HomeworkPageCard(
              "Mathematics",
              "Practice exercise 9.8 from chap 9",
               "13"
            ),
            SizedBox(height: SizeConfig.safeBlockVertical*1.5,),
          ],
        ),
      ),
    );
  }
}


 