// Write a dart code to accept a number and check whether the number is prime or not. Use
// method name check (int n). The method returns 1, if the number is prime otherwise, it returns
// 0.
import 'dart:io';
import 'dart:math';

int checkPrime(int number) {
  for (int i = 2; i < sqrt(number).toInt(); i++) {
    if (number % i == 0) {
      return 0;
    }
  }
  return 1;
}

void main(List<String> args) {
  print("Enter the number : ");
  int number = int.parse(stdin.readLineSync()!);
  if (checkPrime(number) == 1) {
    print("${number} is prime.");
  } else {
    print("${number} is not prime");
  }
}
