import 'package:flutter/material.dart';

class ScrollViewLearning extends StatelessWidget {
  const ScrollViewLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ScrollView Learning")),
      body: Padding(
        padding: EdgeInsets.all(4),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 200,
              margin: EdgeInsets.all(4),
              child: Padding(
                padding: EdgeInsets.all(4),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(4),
                      color: Colors.orange,
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(4),
                      color: Colors.blue,
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(4),
                      color: Colors.green,
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(4),
                      color: Colors.black,
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(4),
                      color: Colors.orange,
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(4),
                      color: Colors.blue,
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(4),
                      color: Colors.green,
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.all(4),
                      color: Colors.black,
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(4),
              color: Colors.red,
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(4),
              color: Colors.blue,
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(4),
              color: Colors.green,
            )
          ]),
        ),
      ),
    );
  }
}
