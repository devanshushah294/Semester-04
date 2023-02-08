import 'package:flutter/material.dart';
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
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: CustomText(
                                  text: "${todaysSteps}",
                                  fontSize: 50.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(),
                          flex: 1,
                        ),
                        Expanded(
                          child: Container(),
                          flex: 2,
                        )
                      ],
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
                          children: [
                            addCircularPercentIndicator(percent: 1, days: "s"),
                            addCircularPercentIndicator(
                                percent: 0.10, days: "m"),
                            addCircularPercentIndicator(
                                percent: 0.5, days: "t"),
                            addCircularPercentIndicator(
                                percent: 0.2, days: "w"),
                            addCircularPercentIndicator(
                                percent: 0.2, days: "t"),
                            addCircularPercentIndicator(
                                percent: 0.2, days: "f"),
                            addCircularPercentIndicator(percent: 0.2, days: "s")
                          ],
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

Widget addCircularPercentIndicator({double? percent, required String days}) {
  return CircularPercentIndicator(
    lineWidth: 3.0,
    circularStrokeCap: CircularStrokeCap.round,
    radius: 15.0,
    // arcType: ArcType.FULL,
    percent: percent ?? 1.0,
    // progressColor: Colors.green[600],
    progressColor: Colors.green.shade500,
    backgroundColor: Colors.indigo.shade400,
    footer: Container(
      padding: EdgeInsets.only(top: 10),
      child: CustomText(text: days, color: Colors.green),
    ),
    startAngle: 900,
  );
}
