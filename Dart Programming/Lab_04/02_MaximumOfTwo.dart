// Write a dart code to find the maximum number from two numbers using this method.
import 'dart:io';

double greaterNumber(double number1, double number2) {
  if (number1 >= number2) {
    return number1;
  }
  return number2;
}

void main(List<String> args) {
  print("Enter number1 : ");
  double number1 = double.parse(stdin.readLineSync()!);
  double number2 = double.parse(stdin.readLineSync()!);
  print("The greater number is : ${greaterNumber(number1, number2)}");
}
