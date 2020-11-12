import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';

Widget ReuseableWelcomeButton(String text,Color color, Function ontap, font) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
        height:SizeConfig.safeBlockVertical*7,

        width: SizeConfig.safeBlockHorizontal*80,
        decoration: BoxDecoration(
          //color: Colors.yellow,
          borderRadius: BorderRadius.all(
            Radius.circular(SizeConfig.safeBlockHorizontal*5),
          ),
          
        ),
        child: Material(
            borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.safeBlockHorizontal*5),
            ),
            color: color,
            child: InkWell(
              onTap: ontap,
              splashColor: Colors.white,
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: font),
                ),
              ),
            ))),
  );
}
