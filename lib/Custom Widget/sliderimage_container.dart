import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';


 Widget SliderImageContainer(Function ontap,String text,String img) {
    return InkWell(
      onTap:ontap,
      child: Container(
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
              color: Color(0xffFFE9D6),
              borderRadius: BorderRadius.all(
                  Radius.circular(SizeConfig.safeBlockHorizontal * 6))),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.safeBlockHorizontal * 4,
                      top: SizeConfig.safeBlockVertical * 3),
                  child: new Text(
                    text,
                    style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.safeBlockHorizontal * 4,
                      color: Color(0xff412e3c),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                      height: SizeConfig.safeBlockVertical * 20,
                      width: SizeConfig.safeBlockHorizontal * 50,
                      child: Image.asset(
                        img,
                        fit: BoxFit.cover,
                      )),
                )
              ])),
    );
  }

