// Write a dart code that reads a number in meters, converts it to feet, and displays the result.
import 'dart:io';

void main(List<String> args) {
  print("Enter the meters: ");
  double? meters = double.parse(stdin.readLineSync()!);
  double? feet = meters * 3.2808;
  print("${meters} meters = ${feet} feet");
}
