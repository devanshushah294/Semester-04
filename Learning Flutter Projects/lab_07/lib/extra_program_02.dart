import 'package:flutter/material.dart';

class ExtraProgram02 extends StatelessWidget {
  const ExtraProgram02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.green,
              )),
              Expanded(
                  child: Container(
                color: Colors.transparent,
              )),
              Expanded(
                  child: Container(
                color: Colors.purple,
              ))
            ],
          )),
          Expanded(
              child: Container(
            color: Colors.transparent,
          )),//done
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.transparent,
              )),
              Expanded(
                  child: Container(
                color: Colors.transparent,
              )),
              Expanded(
                  child: Container(
                color: Colors.red,
              ))
            ],
          )), //done
          Expanded(
              child: Container(
            color: Colors.transparent,
          )),//done
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.transparent,
              )),
              Expanded(
                  child: Container(
                color: Colors.transparent,
              )),
              Expanded(
                  child: Container(
                color: Colors.yellow,
              ))
            ],
          )),//done
        ],
      ),
    );
  }
}
