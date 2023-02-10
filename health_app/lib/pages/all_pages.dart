import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:health_app/Home/home_page.dart';
import 'package:health_app/pages/report_page.dart';

class AllPages extends StatefulWidget {
  const AllPages({Key? key}) : super(key: key);

  @override
  State<AllPages> createState() => _AllPagesState();
}

class _AllPagesState extends State<AllPages> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> widgetList = [
    HomePage(),
    ReportPage(),
    HomePage(),
    ReportPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 91, 171, 1),
      body: ColorfulSafeArea(
        color: Color.fromRGBO(9, 30, 77, 1),
        child: widgetList[_selectedIndex],
      ),
      // body: widgetList[_selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          bottom: 10,
        ),
        child: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(26, 91, 171, 0.9),
          // showUnselectedLabels: true,
          unselectedIconTheme: IconThemeData(color: Colors.white54),
          unselectedItemColor: Colors.white54,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.indigo[800],
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart,
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
      ),
    );
  }
}
