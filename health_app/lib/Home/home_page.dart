import 'package:animate_icons/animate_icons.dart';
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
  late double _dropdownSize = 40;
  int _selectedIndex = 0;
  late TabController _tabController;
  static const List<String> list = <String>["", 'One', 'Two', 'Three', 'Four'];
  String dropdownValue = list.first;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.indigo[800],
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.report),
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
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.indigo.shade800, Colors.indigo.shade500],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TabBar(
                        labelStyle: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 13,
                        ),
                        labelColor: Colors.greenAccent[400],
                        unselectedLabelColor: Colors.white,
                        unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                        ),
                        controller: _tabController,
                        indicatorColor: Colors.greenAccent[400],
                        indicatorSize: TabBarIndicatorSize.label,
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
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        alignment: Alignment.centerRight,
                        child: SpeedDial(
                          spaceBetweenChildren: 2,
                          spacing: 10,
                          buttonSize: Size(_dropdownSize, _dropdownSize),
                          onOpen: () {
                            this._dropdownSize = 50;
                            setState(() {});
                          },
                          onClose: () {
                            this._dropdownSize = 40;
                            setState(() {});
                          },
                          overlayOpacity: 0.7,
                          childrenButtonSize: Size(50, 50),
                          overlayColor: Colors.black,
                          backgroundColor: Colors.greenAccent[400],
                          direction: SpeedDialDirection.down,
                          // animatedIcon: AnimatedIcons.menu_arrow,
                          activeIcon: Icons.keyboard_arrow_up_sharp,
                          icon: Icons.keyboard_arrow_down_rounded,
                          children: [
                            customSpeedDialChild(
                              "Achievements",
                              FontAwesomeIcons.medal,
                            ),
                            customSpeedDialChild(
                              "History`",
                              Icons.access_time_filled,
                            ),
                            customSpeedDialChild("Reset", Icons.delete),
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
        ));
  }
}

SpeedDialChild customSpeedDialChild(String text, icon, {color}) {
  return SpeedDialChild(
    backgroundColor: color ?? Colors.greenAccent[400],
    child: Icon(icon, color: Colors.white),
    labelWidget: CustomText(text: text, color: Colors.white),
  );
}
