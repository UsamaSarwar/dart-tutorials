/// Login Program using do-while loop
/// Ask for password again and again until user enters correct password

import 'dart:io';

void main(List<String> args) {
  // Credentials
  String username = "usama";
  String password = "12345";

  String inputUsername;
  String inputPassword;

  do {
    stdout.write("Enter username: ");
    inputUsername = stdin.readLineSync()!;

    stdout.write("Enter password: ");
    inputPassword = stdin.readLineSync()!;

    if (inputUsername == username && inputPassword == password) {
      print("Login Successful");
    } else {
      print("Login Failed!\nTry again with correct credentials\n");
    }
  } while (inputUsername != username || inputPassword != password);
}
