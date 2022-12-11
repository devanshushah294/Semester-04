// Write a dart code program to calculate the sum of all positive even numbers and the sum of all
// negative odd numbers from a set of numbers. You can enter 0 (zero) to quit the program and
// thus it displays the result.

import 'dart:io';

void main(List<String> args) {
  int input = int.parse(stdin.readLineSync()!);
  int sumOfOddNumbers = 0;
  int sumOfEvenNumbers = 0;
  while (input != 0) {
    if (input > 0 && input % 2 == 0) {
      sumOfEvenNumbers = sumOfEvenNumbers + input;
    }
    if (input < 0 && input % 2 == 1) {
      sumOfOddNumbers = sumOfOddNumbers + input;
    }
    print("Enter the number : ");
    input = int.parse(stdin.readLineSync()!);
  }
  print("The sum of odd negative numbers is : ${sumOfOddNumbers}");
  print("The sum of even positive numbers is : ${sumOfEvenNumbers}");
}
