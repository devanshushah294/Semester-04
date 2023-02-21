import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/database.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/signup_and_update_page_using_database.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/users_page_database.dart';
import 'package:my_flutter_app/fonts/custom_text.dart';

class UserDetailsPageUsingDatabase extends StatefulWidget {
  UserDetailsPageUsingDatabase({Key? key, @required this.map})
      : super(key: key);
  dynamic map;

  @override
  State<UserDetailsPageUsingDatabase> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPageUsingDatabase> {
  @override
  initState() {
    print(widget.map.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context)
              ..pop()
              ..setState(() {});

            ;
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("User page using database"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 300,
              width: 400,
              // decoration: BoxDecoration(
              //   border: Border.all(
              color: Colors.deepOrangeAccent,
              //   ),
              // ),
              child: Card(
                borderOnForeground: false,
                shape: Border.all(
                  color: Colors.deepOrangeAccent,
                ),
                // color: Colors.deepOrangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Container(
                            height: 100,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 3,
                                color: Colors.green,
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  widget.map["Image"] ??
                                      (widget.map["Gender"] == "Male"
                                          ? "https://img.freepik.com/free-icon/male_318-41774.jpg"
                                          : "https://www.shutterstock.com/image-vector/women-facility-service-vector-icon-260nw-1209644506.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ListTile(
                          title: Container(
                            child: CustomText(
                              text: "${widget.map["UserName"]}",
                            ),
                          ),
                          subtitle: CustomText(
                            text: "${widget.map["Job"]}",
                            color: Colors.black26,
                          ),
                          trailing: RatingBar(
                            allowHalfRating: false,
                            onRatingUpdate: (value) {
                              print(value);
                            },
                            itemCount: 1,
                            ratingWidget: RatingWidget(
                              full: Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              empty: Icon(
                                Icons.star_border,
                                color: Colors.green,
                              ),
                              half: Icon(Icons.star_border),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomText(
                                text: "${widget.map["BirthDate"] ?? "hello"}",
                              ),
                              CustomText(
                                text: "${widget.map["City_ID" ?? "hello"]}",
                              ),
                              CustomText(
                                text: "${widget.map["PhoneNumber"] ?? "hello"}",
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: TextButton(
                                onPressed: () {},
                                child: CustomText(
                                  text: "Send Intrest",
                                ),
                                style: TextButton.styleFrom(
                                  minimumSize: Size(30, 40),
                                  side: BorderSide(color: Colors.green),
                                  // backgroundColor: Colors.deepOrangeAccent,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: CustomText(
                                text: "Call now",
                              ),
                              style: TextButton.styleFrom(
                                minimumSize: Size(30, 40),
                                side: BorderSide(color: Colors.green),
                                // backgroundColor: Colors.deepOrangeAccent,
                              ),
                            )
                          ],
                        ),
                      )),
                      Container(
                        alignment: Alignment.topRight,
                        child: CustomText(
                          text: "View matching details",
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      content: const Text('AlertDialog description'),
                      title: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/alertImage.webp",
                          ),
                          CustomText(
                            text: "Are you sure you want to delete he user ? ",
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            deleteById(widget.map["User_ID"]);
                            // UsersPageUsingDatabase().setStat();
                            Navigator.of(context)
                              ..pop()
                              ..pop()
                              ..pushReplacement(MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      UsersPageUsingDatabase())
                                ..setState(() {}));
                          },
                        ),
                      ],
                    ),
                  ),
                  child: CustomText(
                    text: "Delete",
                    color: Colors.white,
                  ),
                  style: TextButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    backgroundColor: Colors.red,
                    minimumSize: Size(150, 50),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignupAndUpdatePageUsingDatabase(
                        userModel: widget.map,
                      ),
                    ));
                  },
                  child: CustomText(
                    text: "Edit",
                    color: Colors.white,
                  ),
                  style: TextButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    backgroundColor: Colors.green,
                    minimumSize: Size(150, 50),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> deleteById(id) async {
    MyDatabase().deleteUserById(id);
  }
}
