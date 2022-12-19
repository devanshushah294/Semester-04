//   Write a dart code to accept n numbers in an array. Display the sum of all the numbers which are
// divisible by either 3 or 5.
import 'dart:io';

int calculateSum(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sum += numbers[i];
      continue;
    }
    if (numbers[i] % 5 == 0) {
      sum += numbers[i];
    }
  }
  return sum;
}

void main(List<String> args) {
  print("Enter the number of numbers you want to enter : ");
  int n = int.parse(stdin.readLineSync()!);
  List<int> numbers = [];
  for (int i = 0; i < n; i++) {
    print("Enter the number : ");
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  int sum = calculateSum(numbers);
  print("Sum = ${sum}");
}
