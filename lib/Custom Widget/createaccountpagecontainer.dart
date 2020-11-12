import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';


Widget CreateAccountPageContainer(Function ontap,String img) {
    return Container(
      height: SizeConfig.safeBlockVertical * 30,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 233, 214, 1),
          borderRadius: BorderRadius.only(
            bottomLeft:
                Radius.circular(SizeConfig.safeBlockHorizontal * 8),
            bottomRight:
                Radius.circular(SizeConfig.safeBlockHorizontal * 8),
          )),
      child: Padding(
        padding: EdgeInsets.only(
            left: SizeConfig.safeBlockHorizontal * 6,
            top: SizeConfig.safeBlockHorizontal * 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap:ontap,
                child: Icon(Icons.arrow_back_ios)),
            Container(
              height: SizeConfig.safeBlockVertical *23,
              child: Center(
                  child: Image.asset(
                img,
                fit: BoxFit.cover,
              )),
            ),
          ],
        ),
      ),
    );
  }

