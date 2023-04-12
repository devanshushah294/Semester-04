import 'package:flutter/material.dart';

class Program04 extends StatelessWidget {
  const Program04({Key? key}) : super(key: key);

  @override
  // layout 1
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Program_04")),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                getExpanded(Colors.red),
                getExpanded(Colors.brown),
                getExpanded(Colors.black),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                getExpanded(Colors.green),
                getExpanded(Colors.cyan),
                getExpanded(Colors.pink),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                getExpanded(Colors.blue),
                getExpanded(Colors.purple),
                getExpanded(Colors.orange),
              ],
            ))
          ],
        ));
  }

  Expanded getExpanded(givenColor) {
    return Expanded(child: Container(color: givenColor));
  }
}
