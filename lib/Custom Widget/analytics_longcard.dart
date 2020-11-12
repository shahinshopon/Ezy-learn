import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';

Widget AnalyticsLongCard(String parcent,String text) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              parcent,
              style: TextStyle(
                fontFamily: "Segoe UI",
                fontWeight:
                    FontWeight.w600,
                fontSize: SizeConfig
                        .safeBlockHorizontal *
                    4.5,
                color: Color(0xffF4643C),
              ),
            ),
            Text(
              "%",
              style: TextStyle(
                fontFamily: "Segoe UI",
                fontSize: SizeConfig
                        .safeBlockHorizontal *
                    3,
                color: Color(0xffF4643C),
              ),
            )
          ],
        ),
        new Text(
          text,
          style: TextStyle(
            fontFamily: "Segoe UI",
            fontWeight: FontWeight.w600,
            fontSize: SizeConfig
                    .safeBlockHorizontal *
                3,
            color: Color(0xff3c2e3c)
                .withOpacity(0.75),
          ),
        )
      ],
    );
  }