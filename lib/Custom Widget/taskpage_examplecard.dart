import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';

Widget TaskPage_ExampleCard(String title, String subtitle, String time, String text) {
  return Center(
    child: Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
      child: Container(
        height: SizeConfig.safeBlockVertical * 9,
        width: SizeConfig.safeBlockHorizontal * 89,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text(
                    title,
                    style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.safeBlockHorizontal * 4.2,
                      color: Color(0xff3c2e3c).withOpacity(0.90),
                    ),
                  ),
                  new Text(
                    subtitle,
                    style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                      color: Color(0xff3c2e3c).withOpacity(0.65),
                    ),
                  )
                ],
              ),
              Container(
                height: SizeConfig.safeBlockVertical * 7,
                width: SizeConfig.safeBlockHorizontal * 14,
                decoration: BoxDecoration(
                    color: Color(0xffF4643C),
                    borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontSize: SizeConfig.safeBlockHorizontal * 3,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}