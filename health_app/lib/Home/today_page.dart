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
  dynamic _todayStepsColor = Colors.white;

  bool _playPauseToggle = true;
  var dailyAverage = 2800;
  var todaysSteps = 5800;
  var taskSteps = 8000;
  Map dayWisePercentage = {
    "Sunday": 0.5,
    "Monday": 0.6,
    "Tuesday": 1.0,
    "Wednesday": 0.7,
    "Thursday": 0.8,
    "Friday": 0.9,
    "Saturday": 1.0,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Container(
                  height: 10,
                ),
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
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: ListTile(
                              title: Container(
                                // width: 150,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: "${todaysSteps}",
                                          fontSize: 60.0,
                                          color: _todayStepsColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        changeTaskStepOnPlayPause(),
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
                              trailing: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (_playPauseToggle == true) {
                                      _playPauseToggle = false;
                                    } else {
                                      _playPauseToggle = true;
                                    }
                                  });
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white38,
                                  ),
                                  child: changePlayPauseIcons(),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              // color: Colors.black54,
                              child: LinearPercentIndicator(
                                percent: todaysSteps / taskSteps,
                                lineHeight: 20,
                                barRadius: Radius.circular(10),
                                backgroundColor: Colors.white12,
                                progressColor: Color.fromRGBO(38, 191, 100, 1),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(right: 50, top: 25),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: threeIcons(FontAwesomeIcons.route,
                                        Colors.amber, 2.66, "Km"),
                                  ),
                                  Expanded(
                                    child: threeIcons(
                                        Icons.local_fire_department,
                                        Colors.orange,
                                        205.4,
                                        "Calories"),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 10),
                                            child: Icon(
                                              Icons.timer,
                                              color: Colors.lightBlueAccent,
                                            ),
                                          ),
                                          CustomText(
                                            text: "0h 37m",
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                          CustomText(
                                            fontSize: 12.0,
                                            text: "Walking Time",
                                            color: Colors.white54,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 25),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                // padding: EdgeInsets.only(left: 20, top: 5),
                                // margin: EdgeInsets.only(bottom: 15),
                                child: CustomText(
                                  color: Colors.white38,
                                  text: "Daily average: ",
                                  fontSize: 16.0,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                // padding: EdgeInsets.only(bottom: 8),
                                child: CustomText(
                                  text: "${dailyAverage}",
                                  fontSize: 16.0,
                                  textAlign: TextAlign.left,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
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
      ),
    );
  }

  Widget changeTaskStepOnPlayPause() {
    if (_playPauseToggle) {
      _todayStepsColor = Colors.white;
      return Container(
        height: 30,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: CustomText(
          text: "Paused",
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(38, 191, 100, 1),
        ),
      );
    } else {
      _todayStepsColor = Colors.white54;
      return CustomText(
        text: "/${taskSteps} Steps",
        fontSize: 18.0,
        color: Colors.white54,
      );
    }
  }

  Widget changePlayPauseIcons() {
    if (_playPauseToggle) {
      return Container(
        child: Icon(
          Icons.play_arrow_rounded,
          color: Color.fromRGBO(38, 191, 100, 1),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
      );
    } else {
      return Container(
        child: Icon(
          Icons.pause,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
      );
    }
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
                color: Color.fromRGBO(38, 191, 100, 1),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Icons.star_rounded,
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
    progressColor: Color.fromRGBO(38, 191, 100, 1),
    backgroundColor: Colors.indigo.shade400,
    footer: Container(
      padding: EdgeInsets.only(top: 10),
      child: CustomText(
        text: days[0].toString().toUpperCase(),
        color: Color.fromRGBO(38, 191, 100, 1),
      ),
    ),
    startAngle: 900.0,
  );
}

Widget threeIcons(icon, iconColor, amount, measure) {
  return Container(
    padding: EdgeInsets.only(left: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        CustomText(
          text: "$amount",
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
        CustomText(
          fontSize: 12.0,
          text: measure,
          color: Colors.white54,
        ),
      ],
    ),
  );
}
