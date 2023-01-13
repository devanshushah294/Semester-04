import 'package:flutter/material.dart';

class Program04 extends StatelessWidget {
  const Program04({Key? key}) : super(key: key);

  @override
  // layout 1
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Program_04")),
        body: Row(
          children: [
            Expanded(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.red,
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.brown,
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.black,
                        ))
                  ],
                )),
            Expanded(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.green,
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.cyan,
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.pink,
                        ))
                  ],
                )),
            Expanded(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.blue,
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.purple,
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.orange,
                        ))
                  ],
                ))
          ],
        ));
  }

  // // layout 2
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(title: Text("Program_04")),
  //       body: Row(
  //         children: [
  //           Expanded(
  //               child: Column(
  //             children: [
  //               Expanded(
  //                   child: Container(
  //                 color: Colors.red,
  //               )),
  //               Expanded(
  //                   child: Container(
  //                 color: Colors.brown,
  //               )),
  //               Expanded(
  //                   child: Container(
  //                 color: Colors.black,
  //               ))
  //             ],
  //           )),
  //           Expanded(
  //               child: Column(
  //             children: [
  //               Expanded(
  //                   flex: 6,
  //                   child: Container(
  //                     color: Colors.green,
  //                   )),
  //               Expanded(
  //                   flex: 4,
  //                   child: Container(
  //                     color: Colors.cyan,
  //                   )),
  //               Expanded(
  //                   flex: 2,
  //                   child: Container(
  //                     color: Colors.pink,
  //                   ))
  //             ],
  //           )),
  //           Expanded(
  //               child: Column(
  //             children: [
  //               Expanded(
  //                   flex: 2,
  //                   child: Container(
  //                     color: Colors.blue,
  //                   )),
  //               Expanded(
  //                   flex: 6,
  //                   child: Container(
  //                     color: Colors.purple,
  //                   )),
  //               Expanded(
  //                   flex: 4,
  //                   child: Container(
  //                     color: Colors.orange,
  //                   ))
  //             ],
  //           ))
  //         ],
  //       ));
  // }
}
