import 'package:flutter/material.dart';
import 'package:my_flutter_app/Learning/scroll_view_learning.dart';

class LearningHomePage extends StatelessWidget {
  const LearningHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learning"),
        ),
        body: Column(children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScrollViewLearning()),
              );
            },
            child: Text("ScrollView Learning"),
          )
        ]));
  }
}
