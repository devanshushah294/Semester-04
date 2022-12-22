// Create a class named Bank_Account with Account_No, User_Name, Email, Account_Type, and
// Account_Balance as data members. Also create a method GetAccountDetails() and
// DisplayAccountDetails(). Create a main method to demonstrate the Bank_Account class.

import 'dart:ffi';
import 'dart:io';

class Bank_Account {
  int? account_no;
  String? user_name;
  String? email;
  String? account_type;
  double? account_balance;
  void getAccountDetails() {
    print("Enter the account number : ");
    this.account_no = int.parse(stdin.readLineSync()!);
    print("Enter the user name : ");
    this.user_name = stdin.readLineSync()!;
    print("Enter the email : ");
    this.email = stdin.readLineSync()!;
    print("Enter the account type : ");
    this.account_type = stdin.readLineSync()!;
    print("Enter the account balance : ");
    this.account_balance = double.parse(stdin.readLineSync()!);
  }

  void displayAccountDetails() {
    print("account_no : ${this.account_balance}");
    print("user name : ${user_name}");
    print("email : ${email}");
    print("accout type : ${account_type}");
    print("account balance : ${account_balance}");
  }
}
