// write a dart code to check whether the given number is positive or negative.
import 'dart:io';

void main(List<String> args) {
  print("Enter the number");
  double? number = double.parse(stdin.readLineSync()!);
  if (number > 0) {
    print("Number is positive.");
  } else if (number < 0) {
    print("Number is negative.");
  } else {
    print("Number is neither positive nor negative is zero");
  }
}
