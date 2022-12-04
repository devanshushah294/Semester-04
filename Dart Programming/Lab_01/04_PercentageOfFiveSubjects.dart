// Write a dart code to find the percentage of 5 subjects.
import 'dart:io';

void main(List<String> args) {
  double? sum = 0;
  bool? isPassed = true;
  for (int i = 0; i < 5; i++) {
    print("Enter the marks obtained in Subject ${i + 1}");
    double? marks = double.parse(stdin.readLineSync()!);
    sum = sum! + marks!;
    if (marks <= 40) {
      isPassed = false;
      break;
    }
  }
  if (isPassed!) {
    print("Congatulations, you are passed and you got ${sum! / 5} percentage");
  } else {
    print("Sorry, you are failed");
  }
}
