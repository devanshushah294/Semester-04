import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_app/custom_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  var todaysSteps = 5800;
  final taskSteps = 8000;
  Map dayWisePercentage = {
    "Sunday": 0.5,
    "Monday": 0.5,
    "Tuesday": 1.0,
    "Wednesday": 0.5,
    "Thursday": 1.0,
    "Friday": 0.5,
    "Saturday": 1.0,
  };

  @override
  Widget build(BuildContext context) {
    var dailyAverage = 2800;
    return Container(
      // color: Colors.indigo,
      padding: const EdgeInsets.only(top: 20, right: 5, left: 5),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.only(bottom: 4),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: [
                          // Expanded(
                          //   flex: 3,
                          //   child: Row(
                          //     children: [
                          //       Expanded(
                          //         flex: 3,
                          //         child: Column(
                          //           children: [
                          //             Row(
                          //               children: [
                          //                 CustomText(
                          //                   text: "${todaysSteps}",
                          //                   fontSize: 50.0,
                          //                   color: Colors.white,
                          //                   fontWeight: FontWeight.bold,
                          //                 ),
                          //                 Column(
                          //                   children: [
                          //                     Container(
                          //                       child: Icon(
                          //                         FontAwesomeIcons.pen,
                          //                         color: Colors.white,
                          //                       ),
                          //                     ),
                          //                     Container(
                          //                       margin: EdgeInsets.only(top: 2),
                          //                       height: 2,
                          //                       width: 25,
                          //                       color: Colors.white,
                          //                     )
                          //                   ],
                          //                 )
                          //               ],
                          //             )
                          //           ],
                          //         ),
                          //       ),
                          //       Expanded(
                          //         flex: 2,
                          //         child: Container(),
                          //       ),
                          //       Expanded(
                          //         flex: 1,
                          //         child: Container(),
                          //       )
                          //     ],
                          //   ),
                          // ),
                          Expanded(
                            flex: 1,
                            child: ListTile(
                              title: Container(
                                width: 180,
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: "${taskSteps}",
                                          fontSize: 60.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        CustomText(
                                          text: "/${todaysSteps} steps",
                                          fontSize: 15.0,
                                          color: Colors.white54,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 15, left: 10),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Icon(
                                              FontAwesomeIcons.pen,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 2),
                                            height: 2,
                                            width: 20,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                            flex: 1,
                          ),
                          Expanded(
                            child: Container(),
                            flex: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 20, top: 5),
                              margin: EdgeInsets.only(bottom: 15),
                              child: CustomText(
                                color: Colors.white38,
                                text: "Daily average: ",
                                fontSize: 16.0,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: CustomText(
                                text: "${dailyAverage}",
                                fontSize: 16.0,
                                textAlign: TextAlign.left,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: percentageIndicatorList(dayWisePercentage),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
              ],
            ),
          ),
        ],
        // child: CustomScrollView(
        //   slivers: [
        //     SliverFillRemaining(
        //       hasScrollBody: false,
        //       child: Column(
        //         children: [
        //           Expanded(
        //             child: Container(
        //               color: Colors.red,
        //             ),
        //           ),
        //           Expanded(
        //             child: Container(
        //               color: Colors.pink,
        //             ),
        //           ),
        //           Expanded(
        //             child: Container(
        //               color: Colors.green,
        //             ),
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}

List<Widget> percentageIndicatorList(Map map) {
  List<Widget> list = [];
  map.forEach(
    (key, value) {
      if (value == 1.0) {
        list.add(
          addCircularPercentIndicator(
            days: key,
            percent: value.toDouble(),
            center: Container(
              decoration: BoxDecoration(
                color: Colors.green.shade500,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Icons.star,
                color: Colors.white,
              ),
            ),
          ),
        );
      } else {
        list.add(
          addCircularPercentIndicator(days: key, percent: value),
        );
      }
    },
  );
  return list;
}

Widget addCircularPercentIndicator(
    {double? percent, required String days, Widget? center}) {
  return CircularPercentIndicator(
    lineWidth: 3.0,
    center: center ?? Container(),
    circularStrokeCap: CircularStrokeCap.round,
    radius: 15.0,
    percent: percent ?? 0.0,
    // progressColor: Colors.green[600],
    progressColor: Colors.green.shade500,
    backgroundColor: Colors.indigo.shade400,
    footer: Container(
      padding: EdgeInsets.only(top: 10),
      child: CustomText(
          text: days[0].toString().toUpperCase(), color: Colors.green),
    ),
    startAngle: 900.0,
  );
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.moveTo(w - 10, 0);
    path.lineTo(0, h - 10);
    path.lineTo(0, h);
    path.lineTo(10, h);
    path.lineTo(w, h - 10);
    path.lineTo(w - 10, 0);
    // path.moveTo(w, h);
    // path.lineTo(0, h);
    // path.lineTo(w, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
