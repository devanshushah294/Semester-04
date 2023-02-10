import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:health_app/custom_text.dart';
import 'package:intl/intl.dart';

class DailyPage extends StatelessWidget {
  const DailyPage({Key? key}) : super(key: key);
  static Map map1 = {
    "Fat burning HIIT": [
      544299,
      "assets/images/Home/daily/fatBurning.jpg",
    ],
    "2 min chest workout": [
      546344,
      "assets/images/Home/daily/chestWorkout.jpg",
    ],
    "2 min flat belly": [
      862490,
      "assets/images/Home/daily/flatBelly.webp",
    ],
    "2 min arm workout": [
      693326,
      "assets/images/Home/daily/armWorkout.webp",
    ]
  };
  static Map map2 = {
    "Get rid of man boobs HIIT": [
      1075035,
      "assets/images/Home/FastWorkout.png"
    ],
    "ONLY 4 moves for abs": [1032231, "assets/images/Home/FastWorkout.png"],
  };
  static Map map3 = {
    "Pre-run warm up": [137390, "assets/images/Home/FastWorkout.png"],
    "Sleepy time stretching": [353388, "assets/images/Home/FastWorkout.png"],
    "Morning warm up": [353388, "assets/images/Home/FastWorkout.png"],
    "Neck & shoulder tension relief": [
      225379,
      "assets/images/Home/FastWorkout.png"
    ],
    "Full body stretching": [820064, "assets/images/Home/FastWorkout.png"],
    "Shoulder tension relief": [310859, "assets/images/Home/FastWorkout.png"]
  };

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CustomText(
            text: "Guess you might need",
            color: Colors.white,
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
          ),
          trailing: SizedBox(
            width: 50,
            child: Row(
              children: [
                Icon(
                  Icons.history_outlined,
                  color: Colors.white,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            itemExtent: 170,
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
                  needsContainer(
                      LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(132, 165, 200, 1),
                          Color.fromRGBO(94, 73, 84, 1)
                        ],
                      ),
                      "assets/images/Home/FastWorkout.png",
                      "Fast Workout",
                      90.0),
                  needsContainer(
                      LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(208, 49, 45, 1),
                          Color.fromRGBO(94, 73, 84, 1)
                        ],
                      ),
                      "assets/images/Home/BodyFocussing.png",
                      "Body focus",
                      90.0)
                ],
              ),
              Column(
                children: [
                  needsContainer(
                      LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(255, 182, 193, 1),
                          Color.fromRGBO(94, 73, 84, 1)
                        ],
                      ),
                      "assets/images/Home/Stretch.png",
                      "Stretch",
                      65.0),
                  needsContainer(
                      LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0x84A5C8), Color(0x718095)],
                      ),
                      "assets/images/Home/FastWorkout.png",
                      "Warm up",
                      90.0),
                ],
              ),
              Column(
                children: [
                  needsContainer(
                      LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0x84A5C8), Color(0x718095)],
                      ),
                      "assets/images/Home/FastWorkout.png",
                      "Pain relief",
                      90.0),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          clipBehavior: Clip.antiAlias,
          child: Container(
            color: Colors.white10,
            // padding: EdgeInsets.only(top: 5),
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: CustomText(
                                text: "Hot",
                                fontSize: 20.0,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                              margin: EdgeInsets.only(top: 15),
                            ),
                            CustomText(
                              text: "12 workouts",
                              fontSize: 10.0,
                              fontWeight: FontWeight.w100,
                              color: Colors.white24,
                            ),
                          ],
                        ),
                        Container(
                          child: CircleAvatar(
                            maxRadius: 35,
                            foregroundImage: AssetImage(
                                "assets/images/Home/FastWorkout.png"),
                            // radius: 35,
                            backgroundColor: Color.fromRGBO(9, 30, 77, 1),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                customColumn(map1),
                customColumn(map2),
                customColumn(map3),
              ],
            ),
          ),
        ),
        Container(
          height: 50,
          child: Center(
            child: CustomText(
                text: "Got feedback or questions? Tell us",
                color: Colors.white54,
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}

Widget needsContainer(abc, image, text, mp) {
  return Container(
    height: 90,
    width: 160,
    decoration: BoxDecoration(
      gradient: abc,
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.only(top: 5),
    child: Stack(
      children: [
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
          ),
          margin: EdgeInsets.only(left: 110, top: 50),
          child: ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.white24,
            ),
          ),
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
          ),
          margin: EdgeInsets.only(left: 135, top: 70),
          child: ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: 30,
              width: 40,
              color: Colors.white38,
            ),
          ),
        ),
        Container(
          height: 90,
          width: 190,
          margin: EdgeInsets.only(left: mp),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.only(bottom: 10, left: 10),
          child: CustomText(
            text: text,
            color: Colors.white,
            fontSize: 15.0,
            fontWeight: FontWeight.w800,
          ),
        )
      ],
    ),
  );
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.moveTo(w, h);
    path.lineTo(0, h);
    path.lineTo(w, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

Widget customColumn(Map map) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromRGBO(19, 69, 136, 1),
          Color.fromRGBO(22, 82, 155, 1)
        ],
      ),
    ),
    margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: getList(map),
    ),
  );
}

Widget hotChild(title, subtitle, imgPath) {
  NumberFormat myFormat = NumberFormat.decimalPattern('en_us');
  return ListTile(
    title: Text(
      title,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    subtitle: CustomText(
      text: "Used by ${myFormat.format(subtitle)} people",
      color: Colors.white54,
      fontSize: 12.0,
    ),
    leading: Container(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(
          imgPath,
          fit: BoxFit.cover,
          width: 70,
          height: 70,
        ),
      ),
    ),
    // leading: CircleAvatar(backgroundImage: AssetImage('assets/images/Home/FastWorkout.png'),),
  );
}

List<Widget> getList(Map map) {
  List<Widget> list = [];
  map.forEach((a, b) {
    list.add(
      hotChild(a, b[0], b[1]),
    );
  });
  return list;
}
