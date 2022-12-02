// Write a dart code to print the addition of 2 numbers.
import 'dart:io';

void main(List<String> args) {
  print("Enter the number 1 : ");
  int? number1 = int.parse(stdin.readLineSync()!);
  print("Enter the number 2 : ");
  int? number2 = int.parse(stdin.readLineSync()!);
  print("Sum : ${number1 + number2}");
}
