// import 'dart:collection';
import "candidate.dart";
import 'dart:io';

import 'candidate.dart';

void main() {
  int id = 1;
  print("Enter the name : ");
  String name = stdin.readLineSync()!;
  print("Enter the age : ");
  int age = int.parse(stdin.readLineSync()!);
  print("Enter the weight : ");
  int weight = int.parse(stdin.readLineSync()!);
  print("Enter the height : ");
  double height = double.parse(stdin.readLineSync()!);
  Candidate candidate1 = new Candidate(id, name, age, weight, height);
  candidate1.displayCandidateDetails();
}
