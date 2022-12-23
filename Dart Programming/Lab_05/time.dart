/*Define Time class with hour and minute as data member. Also define addition() method to add 
two-time objects.*/

import 'dart:io';

void main(List<String> args) {
  print("Enter 1st Time hour : ");
  int hour = int.parse(stdin.readLineSync()!);
  print("Enter 1st Time minute : ");
  int min = int.parse(stdin.readLineSync()!);
  Time t1 = Time(hour, min);
  print("Enter 2st Time hour : ");
  hour = int.parse(stdin.readLineSync()!);
  print("Enter 2st Time minute : ");
  min = int.parse(stdin.readLineSync()!);
  Time t2 = Time(hour, min);
  Time t3 = addition(t1, t2);
}

class Time {
  int? hour, min;
  Time(int hour, int min) {
    this.hour = hour;
    this.min = min;
  }
  int getMinutes() {
    return this.min!;
  }

  int getHour() {
    return this.hour!;
  }

  void displayTime() {
    print("${this.hour}:${this.min} ");
  }

  static Time addition(Time a, Time b) {
    int hours = a.getHour() + b.getHour();
    int minute = a.getMinutes() + b.getMinutes();
    if (minute > 59) {
      minute = minute - 60;
      hours = hours + 1;
    }

    Time t1 = new Time(hours, minute);
    return t1;
  }
}
