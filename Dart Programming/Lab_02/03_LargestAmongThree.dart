// Write a dart code to find out the largest number from three numbers without using Logical
// Operator.
import 'dart:io';

void main(List<String> args) {
  double? number1 = double.parse(stdin.readLineSync()!);
  double? number2 = double.parse(stdin.readLineSync()!);
  double? number3 = double.parse(stdin.readLineSync()!);
  if (number1 >= number2) {
    if (number1 >= number3) {
      print("${number1} is largest");
    } else {
      print("${number3} is largest");
    }
  } else {
    if (number2 >= number3) {
      print("${number2} is largest");
    } else {
      print("${number3} is largest");
    }
  }
}
