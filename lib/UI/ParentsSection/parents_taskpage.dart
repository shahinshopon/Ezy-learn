import 'package:ezy_learn/Custom%20Widget/custompainter.dart';
import 'package:ezy_learn/Custom%20Widget/taskpage_examplecard.dart';
import 'package:ezy_learn/Custom%20Widget/taskpagebutton.dart';
import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:ezy_learn/UI/ParentsSection/parents_tasknextpage.dart';
import 'package:flutter/material.dart';

class ParentsTaskPage extends StatefulWidget {
  @override
  _ParentsTaskPageState createState() => _ParentsTaskPageState();
}

class _ParentsTaskPageState extends State<ParentsTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TaskPage_Button("Today", Color(0xffF4643C), () {}),
            SizedBox(
              width: SizeConfig.safeBlockHorizontal * 3,
            ),
            TaskPage_Button("Next Day", Color(0xff3F2E3F), () {
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
                          Image.asset("task.png")
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.safeBlockVertical * 2,
                      ),
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
                            height: SizeConfig.safeBlockHorizontal * 3,
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
                      )
                    ],
                  ),
                ),
              ),
            ),
            TaskPage_ExampleCard("Book Reading", "10 am - 1 pm", "10", "AM"),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            TaskPage_ExampleCard("Writing Practice", "1 pm - 4 pm", "1", "PM"),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            TaskPage_ExampleCard("Sports Activity", "4 pm - 6 pm", "4", "PM"),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
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
              height: SizeConfig.safeBlockVertical * 1,
            ),
            TaskPage_ExampleCard("Book Reading", "10 am - 1 pm", "10", "AM"),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            TaskPage_ExampleCard("Writing Practice", "1 pm - 4 pm", "1", "PM"),
          ],
        ),
      ),
    );
  }
}
