// Body Mass Index (BMI) is a measure of health on weight. It can be calculated by taking your
// weight in kilograms and dividing by the square of your height in meters. Write a dart code that
// prompts the user to enter a weight in pounds and height in inches and display the BMI.
// Note: 1 pound = .45359237 kg and 1 inch = 0.254 meters
import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  print("Enter the weight in kilograms: ");
  double? weightInKilograms = double.parse(stdin.readLineSync()!);
  print("Enter the height in meters: ");
  double? heightInMeters = double.parse(stdin.readLineSync()!);
  double? bmi = weightInKilograms / pow(heightInMeters, 2);
  print("BMI = ${bmi}");
}
