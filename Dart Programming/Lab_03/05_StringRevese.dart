// Write a dart code to print the reverse string
import 'dart:io';

void main(List<String> args) {
  print("Enter the String : ");
  String str = stdin.readLineSync()!;
  String newString = "";
  for (int i = str.length - 1; i >= 0; i--) {
    newString = newString + str[i].toString();
  }
  print("The new String is ${newString}");
}
