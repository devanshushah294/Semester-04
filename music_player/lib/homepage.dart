import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF444444),
      body: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Find Your Best Music",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontFamily: "Kanit",
                ),
              ),
              margin: EdgeInsets.fromLTRB(13, 23, 0, 15)),
          Container(
            margin: EdgeInsets.fromLTRB(13, 0, 13, 0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF9ea5b0),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                hintText: ' Search',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "New Albums",
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: "Kanit"),
                  ),
                ),
                Container(
                  child: Text(
                    "View all",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 14, fontFamily: "Kanit"),
                  ),
                )
              ],
            ),
          )

          // Expanded(
          //   child: ListView(
          //     children: [
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.red,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.green,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.blue,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.red,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.green,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.blue,
          //       ), Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.red,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.green,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.blue,
          //       ),
          //     ],
          //   ),
          // ),
          ,
          Expanded(
            child: ListView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    // scrollDirection: Axis.horizontal,
                    children: [
                      albumContainer("assets/images/peli.jpg", "text", 7),
                      albumContainer("assets/images/peli.jpg", "text", 7),
                      albumContainer("assets/images/peli.jpg", "text", 7),
                      albumContainer("assets/images/peli.jpg", "text", 7),
                      albumContainer("assets/images/peli.jpg", "text", 7),
                      albumContainer("assets/images/peli.jpg", "text", 7),
                      albumContainer("assets/images/peli.jpg", "text", 7),
                      albumContainer("assets/images/peli.jpg", "text", 7),
                      albumContainer("assets/images/peli.jpg", "text", 7),
                      albumContainer("assets/images/peli.jpg", "text", 7),
                    ],
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                ),Container(
                  color: Colors.red,
                  height: 50,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                ),Container(
                  color: Colors.red,
                  height: 50,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                ),Container(
                  color: Colors.red,
                  height: 50,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        backgroundColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            icon: Icon(Icons.area_chart),
            label: 'Trend',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}

Widget albumContainer(imgPath, text, n) {
  return Container(
    margin: EdgeInsets.all(5),
    child: Image.asset(imgPath),
    height: 75,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.red,
    ),
    width: 100,
  );
}
