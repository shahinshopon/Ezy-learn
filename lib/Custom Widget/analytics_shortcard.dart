import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';

 Widget AnalyticsShortCard(String sub,String parcent) {
    return Center(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(
                SizeConfig.blockSizeHorizontal * 5))),
        child: Container(
          height: SizeConfig.safeBlockVertical * 8,
          width: SizeConfig.safeBlockHorizontal * 85,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(
                  SizeConfig.blockSizeHorizontal * 5))),
          child: Padding(
            padding: EdgeInsets.all(
                SizeConfig.safeBlockHorizontal * 3),
            child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    crossAxisAlignment:
                        CrossAxisAlignment.center,
                    children: [
                      new Text(
                        sub,
                        style: TextStyle(
                          fontFamily: "Segoe UI",
                          fontWeight: FontWeight.w600,
                          fontSize:
                              SizeConfig.safeBlockHorizontal *
                                  5,
                          color: Color(0xff3c2e3c)
                              .withOpacity(0.90),
                        ),
                      ),
                      Container(
                        height:
                            SizeConfig.safeBlockVertical * 7,
                        width:
                            SizeConfig.safeBlockHorizontal * 15,
                        decoration: BoxDecoration(
                            color: Color(0xffF4643C),
                            borderRadius: BorderRadius.all(
                                Radius.circular(SizeConfig
                                        .blockSizeHorizontal *
                                    5))),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Text(
                             parcent ,
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w600,
                                fontSize: SizeConfig
                                        .safeBlockHorizontal *
                                    4.5,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "%",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontSize: SizeConfig
                                        .safeBlockHorizontal *
                                    3,
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