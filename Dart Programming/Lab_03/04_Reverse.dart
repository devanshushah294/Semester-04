import 'dart:io';

void main(List<String> args) {
  print("Enter the number : ");
  int number1 = int.parse(stdin.readLineSync()!);
  int newNumber = 0;
  while (number1 > 0) {
    int lastDigit = number1 % 10;
    newNumber = newNumber * 10 + lastDigit;
    number1 = (number1 ~/ 10);
  }
  print("The number is ${newNumber}");
}
