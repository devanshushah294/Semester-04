// Write a dart code to convert temperature from Fahrenheit to Celsius.
// [°C = [(°F-32)×5]/9, °F = °C * 1.8000]
import 'dart:io';

void main(List<String> args) {
  print("Enter the temperature in celsius :");
  double? tempInFarhenheit = double.parse(stdin.readLineSync()!);
  double? tempInCelsius = (tempInFarhenheit - 32) * (5 / 9);
  print("Temperature in celsius is ${tempInCelsius!}");
}
