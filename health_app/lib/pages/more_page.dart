import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_app/custom_text.dart';

class MorePage extends StatefulWidget {
  MorePage({Key? key}) : super(key: key);

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  List steps = [
    500,
    1000,
    1500,
    2000,
    2500,
    3000,
    3500,
    4000,
    4500,
    5000,
    5500,
    6000,
    6500,
    7000,
    7500,
    8000,
    8500,
    9000,
    9500,
    10000
  ];
  var stepsGoalSelected = 1000;
  bool isSwitched = false;
  bool isDrinkWaterSwitched = true;
  String? chosenLanguage = "English";
  List languageItems = [
    "English",
    "Hindi",
    "Gujarati",
    "Sanskrit",
    "Tamil",
    "Deutsch",
    "Italiano",
    "Indonesia",
    "Punjabi",
    "Telugu",
    "Urdu"
  ];
  Map map = {
    "Instuructions": Icons.integration_instructions_outlined,
    "Feedback": Icons.feedback_outlined,
    "Share with friends": Icons.share_outlined,
    "Request a new feature": Icons.send_outlined,
    "Remove ads": Icons.remove_circle_outline,
  };

  // Map map2 = {
  //   "Google Fit": [
  //     Image.asset("assets/icons/googleFitIcon.png"),
  //     Switch(
  //
  //     ),
  //   ],
  //   "Feedback": [
  //     Icon(
  //       Icons.feedback_outlined,
  //     ),
  //   ],
  //   "Share with friends": [
  //     Icon(
  //       Icons.share_outlined,
  //     )
  //   ],
  //   "Request a new feature": [
  //     Icon(
  //       Icons.send_outlined,
  //     )
  //   ],
  //   "Remove ads": [
  //     Icon(Icons.remove_circle_outline),
  //   ],
  //   "Privacy policy": [
  //     Icon(
  //       Icons.remove_red_eye_outlined,
  //     )
  //   ]
  // };

  List<Widget> getList(Map map) {
    List<Widget> list = [];
    list.add(
      ListTile(
        leading: Icon(
          Icons.remove_red_eye_outlined,
          color: Colors.white,
        ),
        title: CustomText(
          text: "Privacy policy",
          color: Colors.white,
        ),
      ),
    );
    map.forEach(
      (key, value) {
        list.insert(
          list.length - 1,
          Divider(
            thickness: 2,
            height: 10,
            color: Colors.white24,
            indent: 20,
            endIndent: 20,
          ),
        );
        list.insert(
          list.length - 2,
          ListTile(
            leading: Icon(
              value,
              color: Colors.white,
            ),
            title: CustomText(
              text: key,
              color: Colors.white,
            ),
          ),
        );
      },
    );
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "More",
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.w800,
        ),
        // backgroundColor: Color.fromRGBO(9, 30, 77, 1),
        backgroundColor: Color.fromRGBO(8, 22, 59, 1),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(9, 30, 77, 1),
              Color.fromRGBO(22, 82, 155, 1),
            ],
          ),
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Lifetime Totals",
                          color: Colors.white,
                        ),
                        CustomText(
                          text: "History",
                          color: Colors.green,
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              CustomText(
                                text: "12,104",
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              CustomText(
                                text: "kcal",
                                color: Colors.white54,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CustomText(
                                text: "236,793",
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: "steps",
                                color: Colors.white54,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CustomText(
                                text: "161",
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: "km",
                                color: Colors.white54,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                        color: Colors.white10,
                      ),
                      child: ListTile(
                        leading: Image.asset(
                            "assets/icons/achievement-icon.png",
                            color: Colors.white54),
                        title: CustomText(
                          text: "Achievements".toUpperCase(),
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                        trailing: CustomText(
                          text: "20 >",
                          color: Colors.white,
                        ),
                        // title: ,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Container(
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                  ),
                  title: CustomText(
                    text: "Backup & Restore",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  trailing: Icon(
                    Icons.settings_backup_restore,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: CustomText(
                      text: "Step Goal",
                    ),
                    leading: Icon(
                      FontAwesomeIcons.bullseye,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    trailing: DropdownButton(
                      items: steps,
                      onChanged: ((value) {
                        setState(() {
                          stepsGoalSelected = value;
                        });
                      }),
                    ),
                    leading: Container(
                      // margin: EdgeInsets.only(right: 15),
                      padding: EdgeInsets.only(right: 15),
                      child: Image.asset(
                        "assets/icons/sensitivityIcon.png",
                        height: 30,
                        color: Colors.white,
                      ),
                    ),
                    title: CustomText(
                      text: "Sensitivity",
                    ),
                    subtitle: CustomText(
                      text:
                          "High senstivity means small movements will be counted as steps",
                      color: Colors.white54,
                      fontSize: 12.0,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.monitor_weight_outlined,
                      color: Colors.white,
                    ),
                    title: CustomText(
                      text: "Weight",
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    title: CustomText(
                      text: "More Settings",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.wrench,
                  color: Colors.white,
                ),
                title: Text(
                  "How to fix the \" Stop Counting steps\" issue?",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset("assets/icons/googleFitIcon.png",
                        height: 30),
                    title: CustomText(
                      text: "Google fit",
                      color: Colors.white,
                    ),
                    trailing: Switch(
                      activeTrackColor: Colors.white10,
                      activeColor: Colors.green,
                      inactiveTrackColor: Colors.white10,
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = !isSwitched;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.glassWater,
                      color: Colors.white,
                    ),
                    minLeadingWidth: 50,
                    title: CustomText(
                      text: "Drink Water",
                      color: Colors.white,
                    ),
                    trailing: Switch(
                      activeTrackColor: Colors.white10,
                      activeColor: Colors.green,
                      inactiveTrackColor: Colors.white10,
                      value: isDrinkWaterSwitched,
                      onChanged: (value) {
                        setState(() {
                          isDrinkWaterSwitched = !isDrinkWaterSwitched;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.keyboard_voice_outlined,
                      color: Colors.white,
                    ),
                    title: CustomText(
                      text: "Voice options (TTS)",
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                      leading: Icon(
                        FontAwesomeIcons.bell,
                        color: Colors.white,
                      ),
                      title: CustomText(
                        text: "Reminder",
                        color: Colors.white,
                      ),
                      subtitle: CustomText(
                        text: "Every day",
                        color: Colors.white54,
                      ),
                      trailing: Container(
                        width: 90,
                        child: Row(
                          children: [
                            CustomText(
                              text: "08:30 am",
                              color: Colors.green,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      )),
                  ListTile(
                      leading: Icon(
                        Icons.language,
                        color: Colors.white,
                      ),
                      title: CustomText(
                        text: "Language options",
                        color: Colors.white,
                      ),
                      trailing: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: DropdownButton(
                          dropdownColor: Colors.black,
                          style: TextStyle(
                            color: Colors.white,
                          ),

                          alignment: Alignment.bottomRight,
                          // menuMaxHeight: 500,
                          iconSize: 30,
                          iconEnabledColor: Colors.white,
                          items: languageItems.map((value) {
                            return DropdownMenuItem(
                                child: Text(value), value: value);
                          }).toList(),
                          value: chosenLanguage,
                          onChanged: (newValue) {
                            setState(
                              () {
                                chosenLanguage = newValue.toString();
                              },
                            );
                          },
                        ),
                      )),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: getList(map),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
