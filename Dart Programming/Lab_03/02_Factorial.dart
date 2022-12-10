// Write a dart code to find the factorial of the given number
import 'dart:io';

void main(List<String> args) {
  print("Enter the number : ");
  int number1 = int.parse(stdin.readLineSync()!);
  int factorial = 1;
  for (int i = number1; i > 0; i--) {
    factorial = factorial * i;
  }
  print("The factorial of the given number is ${factorial}");
}
