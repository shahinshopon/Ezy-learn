import 'package:ezy_learn/Responsive%20Widget/sizeconfig.dart';
import 'package:flutter/material.dart';


  Widget Taskpage_Card(Function ontap_card,Function ontap_start,Function ontap_finish) {
     bool card_click;
   bool button_click;

    return GestureDetector(
      onTap: ontap_card,
      child: Center(
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(SizeConfig.blockSizeHorizontal * 5))),
          child: Container(
            height: card_click
                ? SizeConfig.safeBlockVertical * 9
                : SizeConfig.safeBlockVertical * 23,
            width: SizeConfig.safeBlockHorizontal * 89,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(
                    SizeConfig.blockSizeHorizontal * 5))),
            child: Padding(
              padding:
                  EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3),
              child: card_click
                  ? Row(
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
                    )
                  : Column(
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
                                          onTap: ontap_start,
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
                                              onTap:ontap_finish,
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
                    ),
            ),
          ),
        ),
      ),
    );
  }
