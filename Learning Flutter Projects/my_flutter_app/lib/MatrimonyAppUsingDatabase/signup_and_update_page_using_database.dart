import 'package:flutter/material.dart';
import 'package:gender_picker/gender_picker.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/database.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/user_details_page_using_database.dart';
import 'package:my_flutter_app/fonts/custom_text.dart';

class SignupAndUpdatePageUsingDatabase extends StatefulWidget {
  SignupAndUpdatePageUsingDatabase({Key? key, this.userModel})
      : super(key: key);
  dynamic userModel;

  @override
  State<SignupAndUpdatePageUsingDatabase> createState() =>
      _SignupAndUpdatePageUsingDatabaseState();
}

class _SignupAndUpdatePageUsingDatabaseState
    extends State<SignupAndUpdatePageUsingDatabase> {
  var id;

  void initState() {
    if (widget.userModel != null) {
      id = widget.userModel["User_ID"].toString();
    }
    nameController = TextEditingController(
        text: widget.userModel != null
            ? widget.userModel["UserName"].toString()
            : "");
    imageController = TextEditingController(
        text: widget.userModel != null
            ? widget.userModel["Image"].toString()
            : "");
    birthdateController = TextEditingController(
        text: widget.userModel != null
            ? widget.userModel["BirthDate"].toString()
            : "");
    cityController = TextEditingController(
        text: widget.userModel != null
            ? widget.userModel["City_ID"].toString()
            : "");
    jobController = TextEditingController(
        text:
            widget.userModel != null ? widget.userModel["Job"].toString() : "");
    phoneNumberController = TextEditingController(
        text: widget.userModel != null
            ? widget.userModel["PhoneNumber"].toString()
            : "");
  }

  Map<String, String> map = {};

  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  TextEditingController imageController = TextEditingController();

  TextEditingController birthdateController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController jobController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  String genderController = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        // color: Colors.deepOrangeAccent,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Enter Name"),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: imageController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter image url"),
                    // validator: (value) {
                    //   var passNonNullValue = value ?? "";
                    //   if (passNonNullValue.isEmpty) {
                    //     return ("Password is required");
                    //   }
                    // },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: birthdateController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter BirthDate"),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: cityController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Enter city"),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: jobController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Enter job"),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: phoneNumberController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter Phone Number"),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: GenderPickerWithImage(
                    verticalAlignedText: true,
                    // to show what's selected on app opens, but by default it's Male
                    selectedGender: Gender.Male,
                    selectedGenderTextStyle: TextStyle(
                        color: Color(0xFF8b32a8), fontWeight: FontWeight.bold),
                    unSelectedGenderTextStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.normal),
                    onChanged: (Gender? gender) {
                      if (gender.toString() == "Gender.Male") {
                        genderController = "male";
                      } else if (gender.toString() == "Gender.Female") {
                        genderController = "female";
                      }
                    },
                    //Alignment between icons
                    equallyAligned: true,
                    animationDuration: Duration(milliseconds: 300),
                    isCircular: true,
                    // default : true,
                    opacityOfGradient: 0.4,
                    padding: const EdgeInsets.all(3),
                    size: 50, //default : 40
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 150),
                  child: TextButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: const Text('AlertDialog description'),
                        title: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Are you sure you want to sign up",
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
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                map["UserName"] = nameController.text.toString();
                                map["Image"] = imageController.text;
                                map["BirthDate"] =
                                    birthdateController.text;
                                map["City_ID"] = cityController.text.toString();
                                map["PhoneNumber"] =
                                    phoneNumberController.text.toString();
                                map["Gender"] = genderController.toString();
                                map["Job"] = jobController.text.toString();
                                if (widget.userModel == null) {
                                  addInApi(map);
                                } else {
                                  print(id.runtimeType);
                                  updateInDatabase(
                                    map,
                                    id: id,
                                  );
                                }
                                // print(map);
                                Navigator.of(context)
                                  ..pop()
                                  ..pop()
                                  ..pushReplacement(
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          UserDetailsPageUsingDatabase(
                                        map: map,
                                      ),
                                    ),
                                  );
                              }
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                    child: CustomText(
                      text: "Submit",
                      color: Colors.white,
                    ),
                    style: TextButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Colors.green,
                      minimumSize: Size(150, 50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void updateInDatabase(Map<String, Object> map, {required String id}) {
    MyDatabase().deleteUserById(id);
    map["User_Id"] = id;
    MyDatabase().addInUsers(map);
  }

  void addInApi(Map<String, String> map) {

  }
}
