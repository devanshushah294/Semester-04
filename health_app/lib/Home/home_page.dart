import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_app/Home/plan_page.dart';
import 'package:health_app/Home/today_page.dart';
import 'package:health_app/pages/report_page.dart';

import '../custom_text.dart';
import 'daily_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late double _dropdownSize = 50;
  late TabController _tabController;
  static const List<String> list = <String>["", 'One', 'Two', 'Three', 'Four'];
  String dropdownValue = list.first;
  var isSpeedDialVisible = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(
      () {
        if (_tabController.index == 0) {
          setState(() {
            isSpeedDialVisible = true;
          });
        } else {
          setState(() {
            isSpeedDialVisible = false;
          });
        }
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(8, 22, 59, 1),
                    Color.fromRGBO(22, 82, 155, 1)
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: TabBar(
                        labelStyle: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                        labelColor: Color.fromRGBO(38, 191, 100, 1),
                        unselectedLabelColor: Colors.white,
                        unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15.0,
                        ),
                        controller: _tabController,
                        indicatorColor: Color.fromRGBO(38, 191, 100, 1),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorPadding: EdgeInsets.all(10),
                        tabs: const <Widget>[
                          Tab(
                            child: Text("Today"),
                          ),
                          Tab(
                            child: Text("Daily"),
                          ),
                          Tab(
                            child: Text("Plan"),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        alignment: Alignment.centerRight,
                        child: SpeedDial(
                          visible: isSpeedDialVisible,
                          animationDuration: Duration(milliseconds: 3),
                          useRotationAnimation: true,
                          spaceBetweenChildren: 2,
                          spacing: 10,
                          buttonSize: Size(_dropdownSize, _dropdownSize),
                          // onOpen: () {
                          //   setState(() {
                          //     this._dropdownSize = 50;
                          //   });
                          // },
                          // onClose: () {
                          //   setState(() {
                          //     this._dropdownSize = 30;
                          //   });
                          // },
                          switchLabelPosition: false,
                          overlayOpacity: 0.7,
                          childrenButtonSize: Size(60, 60),
                          overlayColor: Colors.black,
                          backgroundColor: Color.fromRGBO(38, 191, 100, 1),
                          direction: SpeedDialDirection.down,
                          activeIcon: Icons.keyboard_arrow_up_sharp,
                          icon: Icons.keyboard_arrow_down_rounded,
                          iconTheme: IconThemeData(size: 50),
                          children: [
                            customSpeedDialChild(
                              "Achievements",
                              FontAwesomeIcons.medal,
                              a: true,
                            ),
                            customSpeedDialChild(
                              "History",
                              Icons.access_time_filled,
                              a: false,
                            ),
                            customSpeedDialChild(
                              a: false,
                              "Reset",
                              Icons.delete,
                            ),
                            customSpeedDialChild(
                              "Turn off",
                              Icons.power_settings_new,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    child: TabBarView(
                      controller: _tabController,
                      children: const <Widget>[
                        TodayPage(),
                        DailyPage(),
                        PlanPage(),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

SpeedDialChild customSpeedDialChild(String text, icon, {color, a}) {
  return SpeedDialChild(
    backgroundColor: color ?? Color.fromRGBO(38, 191, 100, 1),
    child: Icon(icon, color: Colors.white),
    labelWidget: CustomText(text: text, color: Colors.white),
  );
}
