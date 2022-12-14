// Write a dart code to calculate simple interest using a method.
import 'dart:io';

double calculateSimpleIntrest(
    double principleAmount, double rateOfIntrest, double time) {
  return (principleAmount * rateOfIntrest * time) / 100;
}

void main(List<String> args) {
  print("Enter the principle amount : ");
  double principleAmount = double.parse(stdin.readLineSync()!);
  print("Enter the rate of intrest : ");
  double rateOfIntrest = double.parse(stdin.readLineSync()!);
  print("Enter the time in years : ");
  double time = double.parse(stdin.readLineSync()!);
  double simpleIntrest =
      calculateSimpleIntrest(principleAmount, rateOfIntrest, time);
  print("The simple intrest is ${simpleIntrest}");
}
