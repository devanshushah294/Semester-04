import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CustomFloatingAccentButton extends StatelessWidget {
  const CustomFloatingAccentButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        children: [
          SpeedDialChild(child: Icon(Icons.mail), label: "mail"),
          SpeedDialChild(child: Icon(Icons.access_alarm), label: "alarm"),
          SpeedDialChild(child: Icon(Icons.copy), label: "copy")
        ],
      ),
    );
  }
}
