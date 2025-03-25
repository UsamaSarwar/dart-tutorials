// User Input in Dart: A Comprehensive Guide
//
// This document provides a detailed guide on how to handle user input in Dart,
// covering string, integer, and floating-point inputs. It also includes
// information on potential exceptions and best practices for robust input
// handling.
//
// Introduction
//
// In many applications, it's essential to interact with users and receive
// input from them. Dart provides the `dart:io` library to facilitate this
// interaction. This guide will walk you through the process of taking
// different types of input from the user, handling potential errors, and
// implementing best practices.
//
// Important Note: User input via `stdin` (standard input) is primarily
// designed for command-line applications. It won't work directly within
// web-based environments like DartPad. You'll need to run these examples
// from your local machine's terminal or command prompt.
//
// Core Concepts
//
// 1.  `dart:io` Library: The `dart:io` library is essential for
//     interacting with the operating system, including reading from the
//     standard input stream (`stdin`).
// 2.  `stdin.readLineSync()`: This method reads a line of text from the
//     standard input. It returns a `String?` (nullable String), meaning it
//     can return `null` if there's an issue reading the input.
// 3.  Parsing: When you need to get numerical input (integers or
//     floating-point numbers), you'll need to parse the string input into
//     the appropriate numerical type using `int.parse()` or `double.parse()`.
// 4.  Error Handling: User input can be unpredictable. It's crucial to
//     handle potential errors, such as the user entering non-numeric data
//     when a number is expected.
//
// Codelab: Taking User Input
//
// 1. String Input
//
// Objective: Get a string (text) input from the user.
//
// Code:

import 'dart:io';

void main() {
  stdout.write("Enter your name: "); // Use stdout.write for no newline
  String? name = stdin.readLineSync();

  if (name != null && name.isNotEmpty) {
    print("Hello, $name!");
  } else {
    print("You didn't enter a name.");
  }

  // Explanation:
  //
  // - `stdout.write("Enter your name: ");`: Prompts the user to enter their
  //   name. `stdout.write` is used instead of `print` to avoid adding a
  //   newline after the prompt, keeping the cursor on the same line.
  // - `String? name = stdin.readLineSync();`: Reads a line of text from the
  //   user. The `?` indicates that `name` can be `null`.
  // - `if (name != null && name.isNotEmpty)`: Checks if the input is not null and not empty.
  // - `print("Hello, $name!");`: Prints a greeting using the entered name.
  // - `else`: if the name is null or empty, print a message.
  //
  // How to Run:
  //
  // 1.  Save the code as a `.dart` file (e.g., `string_input.dart`).
  // 2.  Open your terminal or command prompt.
  // 3.  Navigate to the directory where you saved the file.
  // 4.  Run the command: `dart string_input.dart`
  //
  // 2. Integer Input
  //
  // Objective: Get an integer (whole number) input from the user.
  //
  // Code:

  stdout.write("Enter an integer: ");
  String? input = stdin.readLineSync();

  try {
    int number = int.parse(input!);
    print("You entered: $number");
  } on FormatException {
    print("Invalid input. Please enter a valid integer.");
  } on TypeError {
    print("Invalid input. Please enter a valid integer.");
  } catch (e) {
    print("An unexpected error occurred: $e");
  }

  // Explanation:
  //
  // - `String? input = stdin.readLineSync();`: Reads the user's input as a
  //   string.
  // - `int number = int.parse(input!);`: Attempts to parse the string into an
  //   integer. The `!` is used to assert that `input` is not null after the check.
  // - `try...on FormatException`: This block handles the `FormatException`
  //   that occurs if the user enters something that cannot be parsed as an
  //   integer (e.g., "abc").
  // - `on TypeError`: This block handles the `TypeError` that occurs if the input is null.
  // - `catch (e)`: This block handles any other error.
  // - `print("You entered: $number");`: Prints the entered integer if the
  //   parsing is successful.
  //
  // How to Run:
  //
  // 1.  Save the code as a `.dart` file (e.g., `integer_input.dart`).
  // 2.  Open your terminal or command prompt.
  // 3.  Navigate to the directory where you saved the file.
  // 4.  Run the command: `dart integer_input.dart`
  //
  // 3. Floating-Point Input
  //
  // Objective: Get a floating-point number (number with a decimal point)
  // input from the user.
  //
  // Code:

  stdout.write("Enter a floating-point number: ");
  String? _input = stdin.readLineSync();

  if (_input == null || _input.isEmpty) {
    print("You didn't enter a number.");
    return;
  }

  try {
    double number = double.parse(_input);
    print("You entered: $number");
  } on FormatException {
    print("Invalid input. Please enter a valid floating-point number.");
  } on TypeError {
    print("Invalid input. Please enter a valid floating-point number.");
  } catch (e) {
    print("An unexpected error occurred: $e");
  }
}

// Explanation:
//
// - `String? _input = stdin.readLineSync();`: Reads the user's input as a
//   string.
// - `double number = double.parse(_input!);`: Attempts to parse the string
//   into a double.
// - `try...on FormatException`: Handles the `FormatException` if the user
//   enters something that cannot be parsed as a double.
// - `on TypeError`: This block handles the `TypeError` that occurs if the input is null.
// - `catch (e)`: This block handles any other error.
// - `print("You entered: $number");`: Prints the entered double if the
//   parsing is successful.
//
// How to Run:
//
// 1.  Save the code as a `.dart` file (e.g., `float_input.dart`).
// 2.  Open your terminal or command prompt.
// 3.  Navigate to the directory where you saved the file.
// 4.  Run the command: `dart float_input.dart`
//
// Exceptions and Error Handling
//
// 1. `FormatException`
//
// - When it occurs: When `int.parse()` or `double.parse()` is used, and
//   the input string cannot be converted to the specified numerical type.
// - Example: Trying to parse "abc" as an integer.
// - How to handle: Use a `try...on FormatException` block to catch this
//   exception and provide an appropriate error message to the user.
//
// 2. `TypeError`
//
// - When it occurs: When `int.parse()` or `double.parse()` is used, and
//   the input string is null.
// - Example: Trying to parse null as an integer.
// - How to handle: Use a `try...on TypeError` block to catch this
//   exception and provide an appropriate error message to the user.
//
// 3. `null` Input
//
// - When it occurs: When `stdin.readLineSync()` returns `null`, which
//   can happen if there's an issue reading from the input stream.
// - How to handle: Check if the result of `stdin.readLineSync()` is
//   `null` before attempting to use it.
//
// 4. Empty String
//
// - When it occurs: When the user press enter without writing anything.
// - How to handle: Check if the string is empty with `string.isEmpty`
//
// 5. Other Errors
//
// - When it occurs: Any other error that can occur.
// - How to handle: Use `catch(e)` to catch any other error.
//
// Tricks and Best Practices
//
// 1.  Clear Prompts: Always provide clear and concise prompts to the user
//     so they know what kind of input is expected.
// 2.  Input Validation: Validate user input to ensure it meets your
//     program's requirements. For example, you might check if a number is
//     within a specific range.
// 3.  Looping for Input: If you need to repeatedly ask for input until
//     valid data is entered, use a loop.
// 4.  Trim Input: Use `trim()` to remove leading and trailing whitespace
//     from user input.
// 5. Use `stdout.write`: Use `stdout.write` instead of `print` when you don't want a new line after the prompt.
//
// Conclusion
//
// This guide has covered the fundamentals of taking user input in Dart,
// including string, integer, and floating-point inputs. By understanding
// the core concepts, error handling techniques, and best practices, you can
// create robust and user-friendly command-line applications. Remember to
// always validate user input and handle potential exceptions gracefully.
