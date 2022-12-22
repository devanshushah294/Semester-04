// Write a dart code that calculates area of circle, triangle and square using method overloading.
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Enter 1 to find the area of triangle");
  print("Enter 2 to find the area of right angled triangle");
  print("Enter 3 to find the area of circle");
  print("Enter 4 to find the area of square");
  int number = int.parse(stdin.readLineSync()!);
  switch (number) {
    case 1:
      print("Enter the length of side 1 : ");
      double side1 = double.parse(stdin.readLineSync()!);
      print("Enter the length of side 2 : ");
      double side2 = double.parse(stdin.readLineSync()!);
      print("Enter the length of side 3 : ");
      double side3 = double.parse(stdin.readLineSync()!);
      print("${calculateArea(side1, side2, side3)}");
      break;
    case 4:
      print("Enter the length of side : ");
      double side = double.parse(stdin.readLineSync()!);
      print("${calculateArea(side)} is the area of square.");
      break;
  }
}

double calculateArea(double side) {
  return side * side;
}

double calulateArea(double base, double height) {
  return (1 / 2) * base * height;
}

double calulateArea(double side1, double side2, double side3) {
  double s = (side1 + side2 + side3) / 2;
  return sqrt(s * (s - side1) * (s - side2) * (s - side3));
}
