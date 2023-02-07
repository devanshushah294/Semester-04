import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:health_app/custom_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DailyPage extends StatelessWidget {
  const DailyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 15,
                // padding: EdgeInsets.only(bottom: 10),
                child: CustomText(
                  text: "Guess you might need",
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.history_outlined,
                    color: Colors.white,
                  ),
                  Icon(Icons.more_vert, color: Colors.white)
                ],
              ),
            )
          ],
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
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          clipBehavior: Clip.antiAlias,
          child: Container(
            color: Colors.white24,
            padding: EdgeInsets.only(top: 5),
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
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
                            foregroundImage:AssetImage("assets/images/Home/FastWorkout.png"),
                            radius: 50,
                            backgroundColor: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.transparent,
                ),
                Container(
                  height: 50,
                  color: Colors.transparent,
                ),
                Container(
                  height: 50,
                  color: Colors.transparent,
                ),
                Container(
                  height: 50,
                  color: Colors.transparent,
                ),
                Container(
                  height: 50,
                  color: Colors.transparent,
                ),
                Container(
                  height: 50,
                  color: Colors.transparent,
                ),
                Container(
                  height: 50,
                  color: Colors.transparent,
                ),
                Container(
                  height: 50,
                  color: Colors.transparent,
                ),Container(
                  height: 50,
                  color: Colors.transparent,
                ),Container(
                  height: 50,
                  color: Colors.transparent,
                ),Container(
                  height: 50,
                  color: Colors.transparent,
                ),Container(
                  height: 50,
                  color: Colors.transparent,
                ),
              ],
            ),
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
    decoration: BoxDecoration(
      gradient: abc,
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.only(top: 5),
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
