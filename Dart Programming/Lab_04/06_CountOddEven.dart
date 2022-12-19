// Write a dart code to count the number of even or odd numbers from an array of n numbers.
import 'dart:io';

void main(List<String> args) {
  List<int> numbers = [];
  for (int i = 0; i < 10; i++) {
    print("Enter the number : ");
    int n = int.parse(stdin.readLineSync()!);
    numbers.add(n);
  }
  int countOdd = 0;
  int countEven = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      countEven++;
    } else if (numbers[i] % 2 == 1) {
      countOdd++;
    }
  }
  print("Number of odd numbers is : ${countOdd}");
  print("Number of even numbers is : ${countEven}");
}
