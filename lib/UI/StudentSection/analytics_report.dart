import 'dart:math';
import 'dart:ui';

import 'package:ezy_learn/Custom%20Widget/analytics_longcard.dart';
import 'package:ezy_learn/Custom%20Widget/analytics_shortcard.dart';
import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:ezy_learn/UI/StudentSection/analytics_monthpage.dart';
import 'package:flutter/material.dart';

class AnalyticsReport extends StatefulWidget {
  @override
  _AnalyticsReportState createState() => _AnalyticsReportState();
}

class _AnalyticsReportState extends State<AnalyticsReport> {
  var selected = "Choose";
  bool onclick = false;
  var month;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          overflow: Overflow.visible,
          children: [
            SafeArea(
              child: Column(
                children: [
                  Stack(overflow: Overflow.visible, children: [
                    Container(
                      height: SizeConfig.safeBlockVertical * 30,
                      width: SizeConfig.screenWidth,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 233, 214, 1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                                SizeConfig.safeBlockHorizontal * 8),
                            bottomRight: Radius.circular(
                                SizeConfig.safeBlockHorizontal * 8),
                          )),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.safeBlockHorizontal * 6,
                          right: SizeConfig.safeBlockHorizontal * 3,
                          top: SizeConfig.safeBlockHorizontal * 3,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(Icons.arrow_back_ios)),
                                Transform.rotate(
                                    angle: pi / 180 * 190,
                                    child: Image.asset("big-circle.png"))
                              ],
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockHorizontal * 2,
                            ),
                            new Text(
                              "Analytics Report",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    SizeConfig.safeBlockHorizontal * 7.5,
                                color: Color(0xff3c2e3c),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockHorizontal * 3,
                            ),
                            new Text(
                              "Tap on subject to see full details",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w600,
                                fontSize: SizeConfig.safeBlockHorizontal * 4,
                                color: Color(0xff3c2e3c),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: SizeConfig.safeBlockVertical*27,
                        left: SizeConfig.safeBlockHorizontal*62,
                        child: Container(
                          height: SizeConfig.safeBlockVertical * 6,
                          width: SizeConfig.safeBlockHorizontal * 28.5,
                          decoration: BoxDecoration(
                              color: Color(0xffF4643C),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                    SizeConfig.safeBlockHorizontal * 8),
                              )),
                          
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                icon: Icon(Icons.keyboard_arrow_down),
                                value: this.month,
                                iconEnabledColor: Colors.white,
                                hint: Text(
                                  " Month",
                                  style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal*4,color: Colors.white),
                                ),
                                items: [
                                  DropdownMenuItem(
                                      value: "jan", child: Text(" January")),
                                  DropdownMenuItem(
                                      value: "feb", child: Text(" February")),
                                  DropdownMenuItem(
                                      value: "mar", child: Text(" March")),
                                  DropdownMenuItem(
                                      value: "apr", child: Text(" April")),
                                ],
                                onChanged: (val) {
                                  setState(() {
                                    this.month = val;
                                  });
                                }),
                          ),
                        )),
                  ]),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 6,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        onclick = !onclick;
                      });
                    },
                    child: Center(
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(
                                SizeConfig.blockSizeHorizontal * 5))),
                        child: Container(
                          height: onclick
                              ? SizeConfig.safeBlockVertical * 25
                              : SizeConfig.safeBlockVertical * 8,
                          width: SizeConfig.safeBlockHorizontal * 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  SizeConfig.blockSizeHorizontal * 5))),
                          child: Padding(
                            padding: EdgeInsets.all(
                                SizeConfig.safeBlockHorizontal * 3),
                            child: onclick
                                ? Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          new Text(
                                            "Mathmatics",
                                            style: TextStyle(
                                              fontFamily: "Segoe UI",
                                              fontWeight: FontWeight.w600,
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  5,
                                              color: Color(0xff3c2e3c)
                                                  .withOpacity(0.90),
                                            ),
                                          ),
                                          Container(
                                            height:
                                                SizeConfig.safeBlockVertical *
                                                    6,
                                            width:
                                                SizeConfig.safeBlockHorizontal *
                                                    15,
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
                                                  "85",
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
                                      SizedBox(
                                        height:
                                            SizeConfig.safeBlockVertical * 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AnalyticsLongCard("85", "Sound Gear"),
                                          Container(
                                            height:
                                                SizeConfig.safeBlockVertical *
                                                    7,
                                            width: 0.1,
                                            color: Color(0xff6D626D),
                                          ),
                                          AnalyticsLongCard(
                                              "75", "Surveillance"),
                                          Container(
                                            height:
                                                SizeConfig.safeBlockVertical *
                                                    7,
                                            width: 0.1,
                                            color: Color(0xff6D626D),
                                          ),
                                          AnalyticsLongCard("85", "Class Test"),
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            SizeConfig.safeBlockVertical * 1,
                                      ),
                                      GestureDetector(
                                         onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AnalyticsMonthPage()));
                              },
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: SizeConfig.safeBlockVertical *
                                                6.5,
                                            width:
                                                SizeConfig.safeBlockHorizontal *
                                                    40,
                                            decoration: BoxDecoration(
                                                color: Color(0xff3F2E3F),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(SizeConfig
                                                            .safeBlockHorizontal *
                                                        6))),
                                            child: Center(
                                              child: new Text(
                                                "Full Details",
                                                style: TextStyle(
                                                  fontFamily: "Segoe UI",
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: SizeConfig
                                                          .safeBlockHorizontal *
                                                      5,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ) 
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      new Text(
                                        "Mathmatics",
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
                                              "85",
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
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  AnalyticsShortCard("English literature", "75"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  AnalyticsShortCard("Arts and Crafts", "98"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  AnalyticsShortCard("Chemistry", "85"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  AnalyticsShortCard("Physics", "82"),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1,
                  ),
                  AnalyticsShortCard("Grammer", "72"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
