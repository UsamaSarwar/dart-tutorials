import 'dart:io';

/// Concepts: Use Exception Handling and Asynchronous Programming for Input Validation of an email address.
/// You need to make a program that will ask for an email address and will print "Valid email address" if the email address is valid and
/// will print "Invalid email address" if the email address is invalid.
/// The program will ask for an email address 3 times.
/// If the email address is invalid 3 times, the program will print "Invalid email address" and will end.
/// Note: Use exception handling and asynchronous programming.
///
/// Regex for valid email address: ^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+
///
/// Sample Output
/// Enter email address: abccompany.com
/// Invalid email address
///
/// Enter email address: abc@company.com
/// Valid email address

void main(List<String> args) {
  int count = 0;

  do {
    // Print Enter email address
    stdout.write("\nEnter email address: ");

    // Read email address
    String email = stdin.readLineSync()!;

    // Validate email address
    try {
      if (email.contains(RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
        print("Valid email address");
        break;
      } else {
        count++;
        print("Invalid email address");
      }
    } catch (e) {
      print(e);
    }
  } while (count < 3);
}
