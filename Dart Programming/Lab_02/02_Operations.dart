// Write a dart code to perform Addition, Subtraction, Multiplication, Division based on user choice
// using if, if..else..if, & switch.
import 'dart:io';

void main(List<String> args) {
  print("Enter the number 1: ");
  double? number1 = double.parse(stdin.readLineSync()!);
  print("Enter the number 2: ");
  double? number2 = double.parse(stdin.readLineSync()!);
  print("Enter the operator");
  String? operator = stdin.readLineSync()!;
  double? answer;
  switch (operator) {
    case "+":
      {
        answer = number1 + number2;
      }
      break;
    case "-":
      {
        answer = number1 - number2;
      }
      break;
    case "*":
      {
        answer = number1 * number2;
      }
      break;
    case "/":
      {
        answer = number1 / number2;
      }
  }
  print("${number1} ${operator} ${number2} = ${answer}");
}
