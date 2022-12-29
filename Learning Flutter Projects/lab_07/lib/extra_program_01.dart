import 'package:flutter/material.dart';

class ExtraProgram01 extends StatelessWidget {
  const ExtraProgram01({Key? key}) : super(key: key);

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
                color: Colors.red,
              ))
            ],
          )),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.green,
                      ))
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.yellow,
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.brown,
                      ))
                    ],
                  ))
                ],
              )),
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.orange,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.cyanAccent,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.black,
                  ))
                ],
              ))
        ],
      ),
    );
  }
}
