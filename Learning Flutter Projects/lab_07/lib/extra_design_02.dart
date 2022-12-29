import 'package:flutter/material.dart';
import 'package:lab_07/widgets/custom_expanded_widget.dart';

class ExtraDesign02 extends StatelessWidget {
  const ExtraDesign02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      CustomExpandedWidget(
                        color: Colors.green,
                      ),
                      CustomExpandedWidget()
                    ],
                  )),
                  CustomExpandedWidget(flex: 4,)
                ],
              )),
          Expanded(
              child: Column(
            children: [
              CustomExpandedWidget(
                color: Colors.purple,
              ),
              CustomExpandedWidget(),
              CustomExpandedWidget(
                color: Colors.red,
              ),
              CustomExpandedWidget(),
              CustomExpandedWidget(
                color: Colors.yellow,
              )
            ],
          ))
        ],
      ),
    );
  }
}
