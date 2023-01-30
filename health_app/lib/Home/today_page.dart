import 'package:flutter/material.dart';
import 'package:health_app/custom_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TodayPage extends StatelessWidget {
  const TodayPage({Key? key}) : super(key: key);
  final todaysSteps = 5289;
  final taskSteps = 8000;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.transparent,
      padding: const EdgeInsets.only(top: 20, right: 2, left: 2),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: CustomText(
                              text: "${todaysSteps}",
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
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
                    flex: 3,
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
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(bottom: 4),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  addCircularPercentIndicator(percent: 1, days: "s"),
                  addCircularPercentIndicator(percent: 0.10, days: "m"),
                  addCircularPercentIndicator(percent: 0.5, days: "t"),
                  addCircularPercentIndicator(percent: 0.2, days: "w"),
                  addCircularPercentIndicator(percent: 0.2, days: "t"),
                  addCircularPercentIndicator(percent: 0.2, days: "f"),
                  addCircularPercentIndicator(percent: 0.2, days: "s")
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ],
      ),
    );
  }
}

Widget addCircularPercentIndicator({double? percent, required String days}) {
  return CircularPercentIndicator(
    lineWidth: 3.0,
    radius: 15.0,
    // arcType: ArcType.FULL,
    percent: percent ?? 1.0,
    // progressColor: Colors.green[600],
    progressColor: Colors.green,
    backgroundColor: Colors.indigo.shade400,
    footer: Container(
        padding: EdgeInsets.only(top: 10),
        child: CustomText(text: days, color: Colors.green)),

    center: Text(
      "${percent! * 100}%",
      style: TextStyle(fontSize: 10, color: Colors.white),
    ),
  );
}
