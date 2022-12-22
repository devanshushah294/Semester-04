import 'dart:io';

import 'circle.dart';

void main(List<String> args) {
  Circle c1 = new Circle();
  print("Enter the radius : ");
  double radius = double.parse(stdin.readLineSync()!);
  print("the area is ${c1.area(radius)}");
  print("the perimeter is ${c1.perimeter(radius)}");
}
