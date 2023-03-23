/// ## Assignment 1
/// You need to make a recursive login system that will ask for a username and password. 
/// If the username and password are correct, the program will print "Welcome to the system" and will end. 
/// If the username and password are incorrect, the program will ask for the username and password again. 
/// The program will ask for the username and password 3 times. 
/// If the username and password are incorrect 3 times, the program will print "Access denied" and will end. 
/// The username and password are "admin" and "1234" respectively.

import 'dart:io';

void main() {
  int count = 0;
  String username = "admin";
  String password = "1234";
  String inputUsername;
  String inputPassword;

  while (count < 3) {
    stdout.write("Enter username: ");
    inputUsername = stdin.readLineSync()!;
    stdout.write("Enter password: ");
    inputPassword = stdin.readLineSync()!;

    if (inputUsername == username && inputPassword == password) {
      print("Welcome to the system");
      break;
    } else {
      print("Access denied");
      count++;
    }
  }
}