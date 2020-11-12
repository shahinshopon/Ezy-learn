import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';

 Widget TaskPage_Button(String text, Color color,Function ontap) {
    return Container(
    height: SizeConfig.safeBlockVertical * 7,
    width: SizeConfig.safeBlockHorizontal * 38,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
            Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
    child: Material(
       borderRadius: BorderRadius.all(
        Radius.circular(SizeConfig.safeBlockHorizontal*5),
      ),
      color: color,
                child: InkWell(
        onTap:ontap,
          splashColor: Colors.white,
                  child: Center(
          child: new Text(
            text,
            style: TextStyle(
              fontFamily: "Segoe UI",
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.safeBlockHorizontal * 5,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    ));
  }

