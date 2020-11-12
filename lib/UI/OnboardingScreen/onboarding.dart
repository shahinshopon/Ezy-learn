
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:ezy_learn/UI/OnboardingScreen/onboardingstrings.dart';
import 'package:ezy_learn/UI/WellcomeScreen/wellcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  static int initialpage = 0;
  int _currentindex = 0;
  final _pages = [
    Container(
      child: Image.asset("onboarding1.png"),
    ),
    Container(
      child: Image.asset("onboarding2.png"),
    ),
    Container(
      child: Image.asset("onboarding3.png"),
    ),
    
  ];

  PageController _controller = PageController(
    initialPage: initialpage,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9EDF0),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.transparent,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  onPageChanged: (currentindex) {
                    setState(() {
                      _currentindex = currentindex;
                    });
                  },
                  children: _pages,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.transparent,
                child: FractionallySizedBox(
                  heightFactor: 0.9,
                  widthFactor: 0.85,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFE9EDF0),
                        borderRadius: BorderRadius.all(Radius.circular(
                            SizeConfig.blockSizeHorizontal * 3)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 10,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 5,
                              spreadRadius: 1.0)
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(SizeConfig.safeBlockVertical * 2),
                      child: Column(
                        children: [
                          _currentindex == 0
                              ? onBoardingStrings("Login As Parents",
                                  "Login as parents to check your child's performance")
                              : Center(),
                          _currentindex == 1
                              ? onBoardingStrings("To Do List",
                                  "To make sure nothing gets missed")
                              : Center(),
                          _currentindex == 2
                              ? onBoardingStrings("Analytics Report",
                                  "Self review is the best feedback")
                              : Center(),
                          
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  new DotsIndicator(
                                    dotsCount: 3,
                                    position: _currentindex.toDouble(),
                                    decorator: DotsDecorator(
                                        color:
                                            Color(0xFF8A8A8A), // Inactive color
                                        activeColor: Color(0xFFE94A0F),
                                        activeSize: Size(15, 15),
                                        spacing: EdgeInsets.all(3)),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      height:
                                          SizeConfig.blockSizeHorizontal * 14,
                                      width: SizeConfig.blockSizeVertical * 14,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFE9EDF0),
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black26,
                                                offset: Offset(4.0, 4.0),
                                                blurRadius: 10,
                                                spreadRadius: 1.0),
                                            BoxShadow(
                                                color: Colors.white,
                                                offset: Offset(-4.0, -4.0),
                                                blurRadius: 5,
                                                spreadRadius: 1.0)
                                          ]),
                                      child: Center(
                                        child: FractionallySizedBox(
                                            widthFactor: 0.5,
                                            heightFactor: 0.5,
                                            child: Image.asset(
                                              "arrow.png",
                                              fit: BoxFit.scaleDown,
                                            )),
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        if (_currentindex == 2) {
                                          Navigator.push(
                                              context,
                                              CupertinoPageRoute(
                                                  builder: (_) =>
                                                      WellcomeScreen()));
                                        } else {
                                          _currentindex++;
                                          _controller.jumpToPage(_currentindex);
                                        }
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
