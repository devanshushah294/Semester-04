// Write a dart code to find out the largest number from the given 3 numbers using the conditional operator.
import 'dart:io';

void main(List<String> args) {
  print("Enter the number 1 : ");
  int number1 = int.parse(stdin.readLineSync()!);
  print("Enter the number 1 : ");
  int number2 = int.parse(stdin.readLineSync()!);
  print("Enter the number 1 : ");
  int number3 = int.parse(stdin.readLineSync()!);
  (number1 >= number2)
      ? (number1 >= number3
          ? print("${number1} is largeast")
          : print("${number3} is largest"))
      : (number2 >= number3
          ? print("${number2} is largest")
          : print("${number3} is largest"));
}
