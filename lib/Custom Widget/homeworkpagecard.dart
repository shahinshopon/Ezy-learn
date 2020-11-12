import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';

 Widget HomeworkPageCard(String title,String subtitle,String date) {
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Text(
                      title,
                      style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontWeight: FontWeight.w600,
                        fontSize:SizeConfig.safeBlockHorizontal*4.2,
                        color: Color(0xff3c2e3c).withOpacity(0.90),
                      ),
                    ),
                    SizedBox(height: SizeConfig.safeBlockVertical*0.5,),
                    new Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.safeBlockHorizontal*3.2,
                        color: Color(0xff3c2e3c).withOpacity(0.65),
                      ),
                    )
                  ],
                ),
                Container(
                   height: SizeConfig.safeBlockVertical *7,
          width: SizeConfig.safeBlockHorizontal *15,
          decoration: BoxDecoration(
            color: Color(0xffF4643C),
              borderRadius: BorderRadius.all(
                  Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      Text(date,style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.safeBlockHorizontal*4.5,
                        color: Colors.white,
                      ),),
                      Text("Aug",style: TextStyle(
                        fontFamily: "Segoe UI",
                        
                        fontSize: SizeConfig.safeBlockHorizontal*2.5,
                        color: Colors.white,
                      ),)
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

