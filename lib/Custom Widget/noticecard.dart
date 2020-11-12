import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';


Widget NoticeCardWidget() {
  return Center(
    child: Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
      child: Container(
        height: SizeConfig.safeBlockVertical * 11,
        width: SizeConfig.safeBlockHorizontal * 89,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(
                left: SizeConfig.safeBlockHorizontal*3,
                
              ),
              child: new Text(
                "NOTE: Test of English literature will start from \ntomorrow 8/6/2020 and the ending date is 14/6/2020 till 02:00PM.",
                
                style: TextStyle(
                  fontFamily: "Segoe UI",
                  fontSize: SizeConfig.safeBlockHorizontal * 3.2,
                  color: Color(0xff707070).withOpacity(0.75),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding:  EdgeInsets.only(
                  right: SizeConfig.safeBlockHorizontal*1
                ),
                child: new Text(
                  "2020-06-07",
                  style: TextStyle(
                    fontFamily: "Segoe UI",
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.safeBlockHorizontal * 2.3,
                    color: Color(0xfff4623f),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}