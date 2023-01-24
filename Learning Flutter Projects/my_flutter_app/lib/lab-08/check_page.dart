import "package:flutter/material.dart";

//
// class CheckPage extends StatefulWidget{
//   CheckPage();
//   @override
//   State<CheckPage> createState() => _checkPageState();
// }
// class _checkPageState extends State<CheckPage>{
//   Widget build(BuildContext context){
//     return Scaffold(appBar: AppBar(),);
//   }
// }

// class CheckPage extends StatelessWidget {
//   CheckPage();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//     );
//   }
// }

class CheckPage extends StatefulWidget {
  CheckPage();

  @override
  State<CheckPage> createState() => _checkPageState();
}

class _checkPageState extends State<CheckPage> {
  TextEditingController abc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: Container(
      //   child: Column(
      //     children: [
      //       Container(
      //         child: TextFormField(
      //           controller: abc,
      //           decoration: InputDecoration(
      //             label: Text("Enter Name"),
      //             hintText: "hjhb",
      //             helperText: "sfndgbk",
      //             floatingLabelBehavior:FloatingLabelBehavior.auto,
      //
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: devide(
                3,
                [Colors.red, Colors.green, Colors.blue],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: devide(
                3,
                [Colors.red, Colors.green, Colors.blue],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: devide(
                3,
                [Colors.red, Colors.green, Colors.blue],
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> devide(parts, color) {
  List<Widget> widget = [];
  for (int i = 0; i < parts; i++) {
    widget.add(Expanded(
        child: Container(
      color: color[i] ?? Colors.white,
    )));
  }
  return widget;
}
