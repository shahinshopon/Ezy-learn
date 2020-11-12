import 'package:ezy_learn/Custom%20Widget/taskpage_examplecard.dart';
import 'package:ezy_learn/Custom%20Widget/taskpagebutton.dart';
import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';

class EditTaskpage extends StatefulWidget {
  @override
  _EditTaskpageState createState() => _EditTaskpageState();
}

class _EditTaskpageState extends State<EditTaskpage> {
  bool isclick_delete = false;
  bool isclick_add = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF9F7),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
              child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 1,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 2),
                child: new Text(
                  "Edit Tasks",
                  style: TextStyle(
                    fontFamily: "Segoe UI",
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.safeBlockHorizontal * 9,
                    color: Color(0xff3c2e3c),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 1,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 2),
                child: new Text(
                  "Edit or remove your tasks",
                  style: TextStyle(
                    fontFamily: "Segoe UI",
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.safeBlockHorizontal * 4.2,
                    color: Color(0xff3c2e3c).withOpacity(0.90),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 1,
              ),

              ////////////////////1st part
              ///
              GestureDetector(
                onTap: () {
                  setState(() {
                    isclick_delete = !isclick_delete;
                  });
                },
                child: Center(
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
                    child: Container(
                      height: isclick_delete
                          ? SizeConfig.safeBlockVertical * 20
                          : SizeConfig.safeBlockVertical * 9,
                      width: SizeConfig.safeBlockHorizontal * 89,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              SizeConfig.blockSizeHorizontal * 5))),
                      child: Padding(
                        padding:
                            EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3),
                        child: isclick_delete
                            ?

                            ///tarnery operation

                            Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: TaskPage_Button(
                                        "Delete", Color(0xff3F2E3F), () {}),
                                  )
                                ],
                              )
                            : Row(
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
              TaskPage_ExampleCard("Sports Activity", "4: pm - 6 pm", "4", "PM"),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 1,
              ),
              TaskPage_ExampleCard("Writing Practice", "1 pm - 4 pm", "1", "PM"),
              Padding(
                padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
                child: new Text(
                  "More Tasks",
                  style: TextStyle(
                    fontFamily: "Segoe UI",
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.safeBlockHorizontal * 5,
                    color: Color(0xff3c2e3c).withOpacity(0.90),
                  ),
                ),
              ),

              /////////2nd part(1st part copy)
            
             GestureDetector(
                onTap: () {
                  setState(() {
                    isclick_add = !isclick_add;
                  });
                },
                child: Center(
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
                    child: Container(
                      height: isclick_add
                          ? SizeConfig.safeBlockVertical * 20
                          : SizeConfig.safeBlockVertical * 9,
                      width: SizeConfig.safeBlockHorizontal * 89,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              SizeConfig.blockSizeHorizontal * 5))),
                      child: Padding(
                        padding:
                            EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3),
                        child: isclick_add
                            ?

                            ///tarnery operation

                            Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: TaskPage_Button(
                                        "Add", Color(0xff3F2E3F), () {}),
                                  )
                                ],
                              )
                            : Row(
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
              TaskPage_ExampleCard("Sports Activity", "4: pm - 6 pm", "4", "PM"),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 1,
              ),
              TaskPage_ExampleCard("Writing Practice", "1 pm - 4 pm", "1", "PM"),
            ],
          ),
        )),
      ),
    );
  }
}
