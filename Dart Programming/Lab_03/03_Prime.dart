// Write a dart code to find whether the given number is prime or not.
import 'dart:io';

void main(List<String> args) {
  print("Enter the number :");
  int number1 = int.parse(stdin.readLineSync()!);
  bool prime = true;
  for (int i = 2; i < number1 / 2; i++) {
    if (number1 % i == 0) {
      prime = false;
      break;
    }
  }
  if (prime) {
    print("The number is prime");
  } else {
    print("The number is not prime");
  }
}
