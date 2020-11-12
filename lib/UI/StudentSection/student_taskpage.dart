import 'package:ezy_learn/Custom%20Widget/custompainter.dart';
import 'package:ezy_learn/Custom%20Widget/taskpage_examplecard.dart';
import 'package:ezy_learn/Custom%20Widget/taskpagebutton.dart';
import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:ezy_learn/UI/ParentsSection/parents_tasknextpage.dart';
import 'package:ezy_learn/UI/StudentSection/edit_taskpage.dart';
import 'package:flutter/material.dart';

class StudentTaskPage extends StatefulWidget {
  @override
  _StudentTaskPageState createState() => _StudentTaskPageState();
}

class _StudentTaskPageState extends State<StudentTaskPage> {
  bool card_click = false;
  bool button_click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton:Padding(
      padding:  EdgeInsets.only(
        left: SizeConfig.safeBlockHorizontal*6
      ),
      child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  TaskPage_Button("Today", Color(0xff3F2E3F), () {}),
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 3,
                  ),
                  TaskPage_Button("Next Day", Color(0xffF4643C), () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ParentsTaskNextPage()));
                  }),
                ],
              ),
    ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: SizeConfig.safeBlockVertical * 37,
              child: CustomPaint(
                //You can Replace this with your desired WIDTH and HEIGHT
                size: Size(SizeConfig.screenWidth, SizeConfig.screenHeight / 2),
                painter: RPSCustomPainter(),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.safeBlockHorizontal * 6,
                    right: SizeConfig.safeBlockHorizontal * 3,
                    top: SizeConfig.safeBlockHorizontal * 5,
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
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>EditTaskpage()));
                            },
                                  child: Container(
                                height: SizeConfig.safeBlockVertical * 7,
                                width: SizeConfig.safeBlockHorizontal * 15,
                                decoration: BoxDecoration(
                                    color: Color(0xffF4643C),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            SizeConfig.blockSizeHorizontal * 5))),
                                child: Icon(
                                  Icons.edit,
                                  size: SizeConfig.safeBlockHorizontal * 7,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.safeBlockVertical * 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              new Text(
                                "Tasks",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w600,
                                  fontSize: SizeConfig.safeBlockHorizontal * 9,
                                  color: Color(0xff3c2e3c),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.safeBlockHorizontal * 2,
                              ),
                              new Text(
                                "Tap on tasks to see full details",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w600,
                                  fontSize: SizeConfig.safeBlockHorizontal * 4,
                                  color: Color(0xff3c2e3c),
                                ),
                              )
                            ],
                          ),
                          Image.asset("task.png")
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  card_click = !card_click;
                });
              },
              child: Center(
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
                  child: Container(
                    height: card_click
                        ? SizeConfig.safeBlockVertical * 23
                        : SizeConfig.safeBlockVertical * 9,
                    width: SizeConfig.safeBlockHorizontal * 89,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(
                            SizeConfig.blockSizeHorizontal * 5))),
                    child: Padding(
                      padding:
                          EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3),
                      child: card_click
                          ? 
                           Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        new Text(
                                          "Book Reading",
                                          style: TextStyle(
                                            fontFamily: "Segoe UI",
                                            fontWeight: FontWeight.w600,
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    4.2,
                                            color: Color(0xff3c2e3c)
                                                .withOpacity(0.90),
                                          ),
                                        ),
                                        new Text(
                                          "10 am - 1 pm",
                                          style: TextStyle(
                                            fontFamily: "Segoe UI",
                                            fontWeight: FontWeight.w600,
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    3.5,
                                            color: Color(0xff3c2e3c)
                                                .withOpacity(0.65),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: SizeConfig.safeBlockVertical * 7,
                                      width:
                                          SizeConfig.safeBlockHorizontal * 14,
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
                                            "10",
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
                                            "AM",
                                            style: TextStyle(
                                              fontFamily: "Segoe UI",
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  3,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: SizeConfig.safeBlockVertical * 3,
                                ),
                                button_click == false
                                    ? Padding(
                                        padding: EdgeInsets.only(
                                            top: SizeConfig.safeBlockVertical *
                                                2),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              height:
                                                  SizeConfig.safeBlockVertical *
                                                      7,
                                              width: SizeConfig
                                                      .safeBlockHorizontal *
                                                  38,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff3F2E3F),
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(SizeConfig
                                                              .blockSizeHorizontal *
                                                          5))),
                                              child: Material(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(SizeConfig
                                                          .safeBlockHorizontal *
                                                      5),
                                                ),
                                                color: Color(0xff3F2E3F),
                                                child: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      button_click =
                                                          !button_click;
                                                    });
                                                  },
                                                  splashColor: Colors.white,
                                                  child: Center(
                                                    child: new Text(
                                                      "Start",
                                                      style: TextStyle(
                                                        fontFamily: "Segoe UI",
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: SizeConfig
                                                                .safeBlockHorizontal *
                                                            5,
                                                        color:
                                                            Color(0xffffffff),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                        ),
                                      )
                                    : Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: SizeConfig
                                                        .safeBlockHorizontal *
                                                    2),
                                            child: new Text(
                                              "Remaining Time",
                                              style: TextStyle(
                                                fontFamily: "Segoe UI",
                                                fontWeight: FontWeight.w600,
                                                fontSize: SizeConfig
                                                        .safeBlockHorizontal *
                                                    3,
                                                color: Color(0xff3c2e3c)
                                                    .withOpacity(0.90),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                                SizeConfig.safeBlockVertical *
                                                    0.5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  height: SizeConfig
                                                          .safeBlockVertical *
                                                      7,
                                                  width: SizeConfig
                                                          .safeBlockHorizontal *
                                                      38,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFFE2CCE2),
                                                      borderRadius: BorderRadius
                                                          .all(Radius.circular(
                                                              SizeConfig
                                                                      .blockSizeHorizontal *
                                                                  5))),
                                                  child: Material(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(SizeConfig
                                                              .safeBlockHorizontal *
                                                          5),
                                                    ),
                                                    color: Color(0xFFE2CCE2),
                                                    child: InkWell(
                                                      onTap: () {},
                                                      splashColor: Colors.white,
                                                      child: Center(
                                                        child: new Text(
                                                          "1:56:30",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                "Segoe UI",
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: SizeConfig
                                                                    .safeBlockHorizontal *
                                                                5,
                                                            color: Color(
                                                                0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                              SizedBox(
                                                width: SizeConfig
                                                        .safeBlockHorizontal *
                                                    3,
                                              ),
                                              Container(
                                                  height: SizeConfig
                                                          .safeBlockVertical *
                                                      7,
                                                  width: SizeConfig
                                                          .safeBlockHorizontal *
                                                      38,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff3F2E3F),
                                                      borderRadius: BorderRadius
                                                          .all(Radius.circular(
                                                              SizeConfig
                                                                      .blockSizeHorizontal *
                                                                  5))),
                                                  child: Material(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(SizeConfig
                                                              .safeBlockHorizontal *
                                                          5),
                                                    ),
                                                    color: Color(0xff3F2E3F),
                                                    child: InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          button_click = false;
                                                        });
                                                      },
                                                      splashColor: Colors.white,
                                                      child: Center(
                                                        child: new Text(
                                                          "Finish",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  "Segoe UI",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: SizeConfig
                                                                      .safeBlockHorizontal *
                                                                  5,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                              
                                            ],
                                          ),
                                        ],
                                      ),
                              ],
                            ):Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    new Text(
                                      "Book Reading",
                                      style: TextStyle(
                                        fontFamily: "Segoe UI",
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal *
                                                4.2,
                                        color:
                                            Color(0xff3c2e3c).withOpacity(0.90),
                                      ),
                                    ),
                                    new Text(
                                      "10 am - 1 pm",
                                      style: TextStyle(
                                        fontFamily: "Segoe UI",
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                            SizeConfig.safeBlockHorizontal *
                                                3.5,
                                        color:
                                            Color(0xff3c2e3c).withOpacity(0.65),
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
                                          Radius.circular(
                                              SizeConfig.blockSizeHorizontal *
                                                  5))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "10",
                                        style: TextStyle(
                                          fontFamily: "Segoe UI",
                                          fontWeight: FontWeight.w600,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  4.5,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "AM",
                                        style: TextStyle(
                                          fontFamily: "Segoe UI",
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3,
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
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            TaskPage_ExampleCard("Writing Practice", "1 pm - 4 pm", "1", "PM"),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            TaskPage_ExampleCard("Sports Activity", "4 pm - 6 pm", "4", "PM"),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1.5,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: new Text(
                  "Completed",
                  style: TextStyle(
                    fontFamily: "Segoe UI",
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.safeBlockHorizontal * 5,
                    color: Color(0xff3c2e3c).withOpacity(0.90),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1.5,
            ),
            TaskPage_ExampleCard("Book Reading", "10 am - 1 pm", "10", "AM"),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            TaskPage_ExampleCard("Writing Practice", "1 pm - 4 pm", "1", "PM"),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            TaskPage_ExampleCard("Writing Practice", "1 pm - 4 pm", "1", "PM"),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            TaskPage_ExampleCard("Writing Practice", "1 pm - 4 pm", "1", "PM"),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            
          ],
        ),
      ),
    );
  }
}
