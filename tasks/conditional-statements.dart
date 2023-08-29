import 'dart:io';

void main(List<String> args) {


  // // Take input from user via terminal
  // print("Enter username: ");
  // String? userUsername = stdin.readLineSync();

  // print("Enter password: ");
  // String? userPassword = stdin.readLineSync();

  // // Show Credentials
  // print("Username: $userUsername");
  // print("Password: $userPassword");

  // Take number from user via terminal
  print("Enter a number: ");
  int? userNumber = int.parse(stdin.readLineSync()!);

  // Check if number is even or odd
  if (userNumber % 2 == 0) {
    print("The given number is Even.");
  } else {
    print("The given number is Odd.");
  }
}