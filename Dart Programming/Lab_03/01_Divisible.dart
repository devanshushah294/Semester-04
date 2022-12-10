// Write a dart code to print numbers between two given numbers which are divisible by 2 but not
// divisible by 3
import 'dart:io';

void main(List<String> args) {
  print("Enter the number 1 : ");
  int number1 = int.parse(stdin.readLineSync()!);
  print("Enter the number 2");
  int number2 = int.parse(stdin.readLineSync()!);
  for (int i = number1; i < number2; i++) {
    if (i % 2 == 0 && i % 3 != 0) {
      print(i);
    }
  }
}
