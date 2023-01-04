import "package:flutter/material.dart";
import 'package:lab_07/widgets/custom_column_widget.dart';
import 'package:lab_07/widgets/custom_expanded_widget.dart';

class ExtraDesign04 extends StatelessWidget {
  const ExtraDesign04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        CustomExpandedWidget(
          child: CustomExpandedWidget(
            color: Colors.blue,
            child: Column(
              children: const [
                CustomExpandedWidget(
                  flex: 3,
                  color: Colors.red,
                  margin: EdgeInsets.all(10),
                ),
                CustomExpandedWidget(
                  flex: 2,
                  color: Colors.amber,
                  margin: EdgeInsets.all(10),
                ),
                CustomExpandedWidget(
                  flex: 1,
                  color: Colors.green,
                  margin: EdgeInsets.all(10),
                )
              ],
            ),
          ),
        ),
        CustomExpandedWidget(
          color: Colors.blue,
          flex: 2,
          child: Column(
            children: [
              CustomExpandedWidget(
                flex: 4,
                color: Colors.blue,
                child: Row(
                  children: [
                    CustomExpandedWidget(
                      child: Column(
                        children: [
                          const CustomExpandedWidget(
                            margin: EdgeInsets.all(10),
                            color: Colors.yellow,
                            flex: 4,
                          ),
                          const CustomExpandedWidget(
                            margin: EdgeInsets.all(10),
                            color: Colors.purple,
                            flex: 2,
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                    CustomExpandedWidget(
                      child: Column(
                        children: [
                      const    CustomExpandedWidget(
                            margin: EdgeInsets.all(10),
                            color: Colors.pink,
                            flex: 5,
                          ),
                      const    CustomExpandedWidget(
                            margin: EdgeInsets.all(10),
                            color: Colors.amber,
                            flex: 1,
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                    )
                  ],
                ),
              ),
              CustomExpandedWidget(
                flex: 2,
                color: Colors.blue,
                child: Column(
                  children: const [
                    CustomExpandedWidget(
                      flex: 1,
                      color: Colors.black,
                      margin: EdgeInsets.all(10),
                    ),
                    CustomExpandedWidget(
                        flex: 1,
                        color: Colors.amber,
                        margin: EdgeInsets.all(10))
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
