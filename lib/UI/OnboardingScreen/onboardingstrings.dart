import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';

Widget onBoardingStrings(title,description){
  return Expanded(
    flex: 2,
    child: Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Text(
            title,
            style: TextStyle(
              fontFamily: "Segoe UI",
              fontWeight: FontWeight.w600,
              fontSize:
              SizeConfig.safeBlockHorizontal * 7,
              color:
              Color(0xff141313).withOpacity(0.85),
              shadows: [
                Shadow(
                  offset: Offset(0.00, 3.00),
                  color: Color(0xff000000)
                      .withOpacity(0.14),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.01,
          ),
          new Text(
            description,
            style: TextStyle(
              fontFamily: "Segoe UI",
              fontSize:
              SizeConfig.safeBlockHorizontal * 5,
              color: Color(0xff161616),
              shadows: [
                Shadow(
                  offset: Offset(0.00, 3.00),
                  color: Color(0xff000000)
                      .withOpacity(0.16),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}