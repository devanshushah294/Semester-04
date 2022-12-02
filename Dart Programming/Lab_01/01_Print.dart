import 'dart:ffi';

void main(List<String> args) {
  int? rollNo;
  String? name;
  int? sem;
  String? division;
  name = "Devanshu";
  rollNo = 357;
  sem = 4;
  division = "c";

  print(
      "Name : ${name!}'s \nRoll No : ${rollNo!} \nSem  = ${sem!} \nDivision : ${division!}");
}
