import 'package:flutter/material.dart';
import 'package:my_flutter_app/lab-07/widgets/custom_expanded_widget.dart';

class ExtraDesign01 extends StatelessWidget {
  const ExtraDesign01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Extra Design 01",)),),
      body: Column(
        children: [
          CustomExpandedWidget(
            color: Colors.red,
          ),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  CustomExpandedWidget(
                    color: Colors.green,
                  ),
                  Expanded(
                      child: Column(children: [
                    CustomExpandedWidget(
                      color: Colors.yellow,
                    ),
                    CustomExpandedWidget(
                      color: Colors.brown,
                    )
                  ]))
                ],
              )),
          Expanded(flex:3,child: Row(children: [CustomExpandedWidget(color:Colors.orange),CustomExpandedWidget(color: Colors.cyan,),CustomExpandedWidget(color: Colors.black,)],))
        ],
      ),
    );
  }
}
