import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ezy_learn/Custom%20Widget/noticecard.dart';
import 'package:ezy_learn/Custom%20Widget/sliderimage_container.dart';
import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:ezy_learn/UI/StudentSection/analytics_report.dart';
import 'package:ezy_learn/UI/StudentSection/student_taskpage.dart';
import 'package:flutter/material.dart';

class TeacherHomepage extends StatefulWidget {
  @override
  _TeacherHomepageState createState() => _TeacherHomepageState();
}

class _TeacherHomepageState extends State<TeacherHomepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Container(
          color: Color(0xFF251B25),
          child: Column(
            children: [
              Expanded(flex: 2,child:Center() ),
              Expanded(flex: 2,
                              child: Padding(
                  padding:
                      EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 4),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: SizeConfig.safeBlockHorizontal * 9,
                        child: Image.asset(
                          "parents.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 3,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sir Abram",
                            style: TextStyle(
                                fontSize: SizeConfig.safeBlockHorizontal * 7,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                                ),
                          ),
                          Text(
                            "Teacher ID",
                            style: TextStyle(
                              fontSize: SizeConfig.safeBlockHorizontal * 4,
                               color: Colors.white
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
                 Expanded(flex: 3,
                            child: Column(
                              children: [
                                ListTile(
                  leading:Icon(Icons.home,color: Colors.white,),
                  title: Text("Home",
                  style: TextStyle(
                        fontFamily: "SF UI  Text",
                        fontWeight: FontWeight.w700,
                        fontSize: SizeConfig.safeBlockHorizontal * 4,
                        color: Color(0xffffffff),
                      ),
                  ),
                ),
                ListTile(
                leading:Icon(Icons.message,color: Colors.white,),
                title: Text("About Us",
                style: TextStyle(
                      fontFamily: "SF UI  Text",
                      fontWeight: FontWeight.w700,
                      fontSize: SizeConfig.safeBlockHorizontal * 4,
                      color: Color(0xffffffff),
                    ),
                ),
              ),
                              ],
                            ),
                 ),

              Expanded(flex:7,child: Center()),
               Expanded(flex:2,
                                child: Padding(
                   padding:  EdgeInsets.only(
                     left: SizeConfig.safeBlockHorizontal*3
                   ),
                   child: Row(
                     children: [
                       Icon(Icons.settings,color: Colors.white,),
                       SizedBox(width: SizeConfig.safeBlockHorizontal*4,),
                       Text("Settings",
                    style: TextStyle(
                          fontFamily: "SF UI  Text",
                          fontWeight: FontWeight.w700,
                          fontSize: SizeConfig.safeBlockHorizontal * 4,
                          color: Color(0xffffffff),
                        ),
                    ),
                    SizedBox(width: SizeConfig.safeBlockHorizontal*0.5,),
                    Text("|",style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.safeBlockHorizontal*4
                    ),),
                    SizedBox(width: SizeConfig.safeBlockHorizontal*0.5,),
                    Text("Logout",
                    style: TextStyle(
                          fontFamily: "SF UI  Text",
                          fontWeight: FontWeight.w700,
                          fontSize: SizeConfig.safeBlockHorizontal * 4,
                          color: Color(0xffffffff),
                        ),
                    ),

                     ],
                   ),
                 ),
               ),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: SizeConfig.safeBlockVertical * 15,
                          width: SizeConfig.safeBlockHorizontal * 40,
                          child: Image.asset(
                            "big-circle.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        
                        IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            _scaffoldKey.currentState.openDrawer();
                            
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical * 1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.safeBlockHorizontal * 2),
                      child: new Text(
                      "Select anyone",
                      style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.safeBlockHorizontal * 7,
                        color: Color(0xff3c2e3c),
                      ),
                        ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.safeBlockHorizontal * 2),
                          child: new Text(
                            "Drag right or left to select anyone",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xff3c2e3c).withOpacity(0.90),
                            ),
                          ),
                        ),
                        Container(
                          height: SizeConfig.safeBlockVertical * 7,
                          width: SizeConfig.safeBlockHorizontal * 16,
                          child: Image.asset(
                            "small-circle.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 2,
            ),
            CarouselSlider(
                options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    enlargeCenterPage: true,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    reverse: false,
                    height: SizeConfig.safeBlockVertical * 30),
                items: [
                  

                  SliderImageContainer(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentTaskPage()));
                  }, "To Do List", "todo-list.png"),

                  SliderImageContainer(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnalyticsReport()));
                  }, "Analytics", "analytics.png"),
                ]),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.safeBlockHorizontal * 5,
                  right: SizeConfig.safeBlockHorizontal * 5,
                  top: SizeConfig.safeBlockHorizontal * 5,
                  bottom: SizeConfig.safeBlockHorizontal * 3),
              child: new Text(
                "Notice",
                style: TextStyle(
                  fontFamily: "Segoe UI",
                  fontWeight: FontWeight.w700,
                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                  color: Color(0xff412e3c).withOpacity(0.90),
                ),
              ),
            ),
            NoticeCardWidget(),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            NoticeCardWidget(),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            NoticeCardWidget(),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            NoticeCardWidget()
          ],
        ),
      )),
    );
  }
}
