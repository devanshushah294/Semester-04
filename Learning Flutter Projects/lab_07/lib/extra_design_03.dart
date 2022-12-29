import 'package:flutter/material.dart';
import 'package:lab_07/widgets/custom_expanded_widget.dart';

class ExtraDesign03 extends StatelessWidget {
  const ExtraDesign03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Extra Design 03")),
        ),
        body: Column(
          children: [
            CustomExpandedWidget(
              color: Colors.red,
            ),
            Expanded(
                child: Row(
              children: [
                CustomExpandedWidget(
                  color: Colors.black,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        CustomExpandedWidget(
                          color: Colors.purple,
                        ),
                        CustomExpandedWidget(
                          color: Colors.amber,
                        )
                      ],
                    )),
                    Expanded(
                        child: Row(
                      children: [
                        CustomExpandedWidget(
                          color: Colors.green,
                        ),
                        CustomExpandedWidget(
                          color: Colors.pink,
                        )
                      ],
                    ))
                  ],
                )),
                CustomExpandedWidget(
                  color: Colors.black,
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                CustomExpandedWidget(
                  color: Colors.limeAccent,
                ),
                CustomExpandedWidget(
                  color: Colors.greenAccent,
                ),
                CustomExpandedWidget(
                  color: Colors.limeAccent,
                ),
                CustomExpandedWidget(
                  color: Colors.greenAccent,
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        CustomExpandedWidget(
                          color: Colors.red[200],
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                CustomExpandedWidget(
                                  color: Colors.purple,
                                ),
                                CustomExpandedWidget(
                                  color: Colors.amber,
                                ),
                              ],
                            )),
                            Expanded(child: Row(children: [
                              CustomExpandedWidget(
                                color: Colors.green,
                              ),
                              CustomExpandedWidget(
                                color: Colors.pink,
                              ),
                            ],)),
                          ],
                        ))
                      ],
                    )),
                    Expanded(
                        child: Row(
                      children: [
                        CustomExpandedWidget(
                          color: Colors.black,
                        ),
                        CustomExpandedWidget(
                          color: Colors.red[200],
                        )
                      ],
                    ))
                  ],
                )),
                CustomExpandedWidget(
                  color: Colors.amberAccent,
                ),
                CustomExpandedWidget(
                  color: Colors.brown,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          CustomExpandedWidget(
                            color: Colors.black,
                          ),
                          CustomExpandedWidget(
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          CustomExpandedWidget(
                            color: Colors.red,
                          ),
                          CustomExpandedWidget(
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          CustomExpandedWidget(
                            color: Colors.black,
                          ),
                          CustomExpandedWidget(
                            color: Colors.red,
                          )
                        ],
                      ),
                    )
                  ],
                ))
              ],
            ))
          ],
        ));
  }
}
