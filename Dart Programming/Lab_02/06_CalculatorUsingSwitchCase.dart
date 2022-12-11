// Write a dart code to make a Simple Calculator using switch...case.
import 'dart:io';

void main(List<String> args) {
  print("Enter the number 1 : ");
  double number1 = double.parse(stdin.readLineSync()!);
  print("Enter the number 2 : ");
  double number2 = double.parse(stdin.readLineSync()!);
  print("Enter the operator form +,-,*,/ : ");
  String operator = stdin.readLineSync()!;
  switch (operator) {
    case "+":
      print("$number1 + $number2 = ${number1 + number2}");
      break;
    case "-":
      print("$number1 - $number2 = ${number1 - number2}");
      break;
    case "*":
      print("$number1 * $number2 = ${number1 * number2}");
      break;
    case "/":
      print("$number1 / $number2 = ${number1 / number2}");
      break;
  }
}
