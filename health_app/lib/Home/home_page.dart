import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_app/Home/plan_page.dart';

import 'dart:math' as math;

import 'package:health_app/Home/today_page.dart';

import '../custom_text.dart';
import 'custom_floating_accent_button.dart';
import 'daily_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late double _dropdownSize = 50;
  int _selectedIndex = 0;
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
        print(_tabController.index);
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(26, 91, 171, 1),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo[800],
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.report,
            ),
            label: "Report",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety),
            label: "Health",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "More",
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.greenAccent[400],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(9, 30, 77, 1),
                  Color.fromRGBO(22, 82, 155, 1)
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TabBar(
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                      labelColor: Colors.greenAccent[400],
                      unselectedLabelColor: Colors.white,
                      unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                      ),
                      controller: _tabController,
                      indicatorColor: Colors.greenAccent[400],
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
                      margin: EdgeInsets.only(top: 10, right: 10),
                      alignment: Alignment.centerRight,
                      child: SpeedDial(
                        // renderOverlay: false,
                        visible: isSpeedDialVisible,
                        useRotationAnimation: true,
                        spaceBetweenChildren: 2,
                        spacing: 10,
                        buttonSize: Size(_dropdownSize, _dropdownSize),
                        onOpen: () {
                          setState(() {
                            this._dropdownSize = 50;
                          });
                        },
                        onClose: () {
                          setState(() {
                            this._dropdownSize = 50;
                          });
                        },
                        switchLabelPosition: false,
                        overlayOpacity: 0.7,
                        childrenButtonSize: Size(60, 60),
                        overlayColor: Colors.black,
                        backgroundColor: Colors.greenAccent[400],
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
                  // padding: EdgeInsets.only(top: 0),
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
    );
  }
}

SpeedDialChild customSpeedDialChild(String text, icon, {color, a}) {
  return SpeedDialChild(
    backgroundColor: color ?? Colors.greenAccent[400],
    child: Icon(icon, color: Colors.white),
    labelWidget: CustomText(text: text, color: Colors.white),
  );
}
