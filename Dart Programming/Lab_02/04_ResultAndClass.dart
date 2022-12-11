// Write a dart code to read marks of five subjects. Calculate percentage and print class
// accordingly. Fail below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First
// Class between 60 to 70, Distinction if more than 70.
import 'dart:io';

void main(List<String> args) {
  print("Enter the marks of subject 1 : ");
  double marksOfSubject1 = double.parse(stdin.readLineSync()!);
  print("Enter the marks of subject 2 : ");
  double marksOfSubject2 = double.parse(stdin.readLineSync()!);
  print("Enter the marks of subject 3 : ");
  double marksOfSubject3 = double.parse(stdin.readLineSync()!);
  print("Enter the marks of subject 4 : ");
  double marksOfSubject4 = double.parse(stdin.readLineSync()!);
  print("Enter the marks of subject 5 : ");
  double marksOfSubject5 = double.parse(stdin.readLineSync()!);
  double totalMarks = marksOfSubject1 +
      marksOfSubject2 +
      marksOfSubject3 +
      marksOfSubject4 +
      marksOfSubject5;
  double percentage = totalMarks / 5;
  if (marksOfSubject1 < 35 ||
      marksOfSubject2 < 35 ||
      marksOfSubject3 < 35 ||
      marksOfSubject4 < 35 ||
      marksOfSubject5 < 35) {
    print("Sorry, you are failed");
  } else if (percentage >= 35 && percentage < 45) {
    print("You passed with pass class.");
  } else if (percentage >= 45 && percentage < 60) {
    print("You passed with second class.");
  } else if (percentage >= 60 && percentage < 70) {
    print("You passed with first class.");
  } else if (percentage >= 70 && percentage <= 100) {
    print("You passed with distinction.");
  } else {
    print("Enter the correct marks");
  }
}
