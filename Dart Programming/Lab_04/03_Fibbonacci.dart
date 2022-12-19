// Write a dart code to generate a Fibonacci series of N given numbers using this method.
import 'dart:io';

void printList(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) {
    stdout.write("${list[i]}, ");
  }
  stdout.write(list[list.length - 1]);
}

void main(List<String> args) {
  print("Enter the number of numbers you want in fibbnacci series : ");
  int n = int.parse(stdin.readLineSync()!);
  if (n == 1) {
    print("0");
  } else if (n == 2) {
    print("0, 1");
  } else {
    List<int> series = [0, 1];
    for (int i = 2; i < n; i++) {
      series.add(series[i - 1] + series[i - 2]);
    }
    printList(series);
  }
}
