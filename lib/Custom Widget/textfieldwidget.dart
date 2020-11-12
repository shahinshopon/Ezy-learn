import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';



Widget TextfieldWidget(String hinttext) {
  return Card(
    elevation: 3,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
    child: Container(
      height: SizeConfig.safeBlockVertical * 7,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3),
        child: TextField(
          decoration:
              InputDecoration(hintText: hinttext, border: InputBorder.none),
        ),
      ),
    ),
  );
}
