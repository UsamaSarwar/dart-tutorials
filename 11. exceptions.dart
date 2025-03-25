/// Exceptions in Dart
///
/// This file demonstrates the various ways to handle exceptions in Dart,
/// including try-catch, try-catch-finally, and throwing custom exceptions.
/// It also covers common exception types and best practices for exception handling.
///
/// Key Concepts:
/// 1. Exceptions: Errors that occur during program execution.
/// 2. try: A block of code where exceptions might occur.
/// 3. catch: A block of code that handles specific exceptions.
/// 4. finally: A block of code that always executes, regardless of exceptions.
/// 5. throw: Used to manually raise an exception.
/// 6. on: Used to catch specific types of exceptions.
///
/// Exception Handling Best Practices:
/// 1. Be specific: Catch specific exception types whenever possible.
/// 2. Handle exceptions gracefully: Don't let exceptions crash your program.
/// 3. Use finally for cleanup: Ensure resources are released.
/// 4. Throw meaningful exceptions: Provide context for errors.
/// 5. Don't overuse exceptions: Use them for exceptional situations, not normal control flow.
/// 6. Log exceptions: Record exception details for debugging.
/// 7. Consider custom exceptions: Create your own exception types for specific error scenarios.
///
/// Tips and Tricks:
/// 1. Use `on` for specific exception types: This allows you to handle different exceptions differently.
/// 2. Use `catch` with `e` and `s` for more details: `e` gives you the exception object, `s` gives you the stack trace.
/// 3. Use `rethrow` to propagate exceptions: This allows you to handle an exception partially and then pass it up the call stack.
/// 4. Use `assert` for debugging: This helps you catch errors during development.
/// 5. Use `try-catch` in asynchronous code: This is essential for handling errors in futures and streams.
/// 6. Use `finally` for cleanup: This is crucial for releasing resources like file handles or database connections.
/// 7. Create custom exceptions: This improves code readability and maintainability.
/// 8. Document your exceptions: This helps other developers understand how to handle errors in your code.

// ignore_for_file: unused_element, deprecated_member_use

class InsufficientFundsException implements Exception {
  String message;
  InsufficientFundsException(this.message);
  @override
  String toString() => "InsufficientFundsException: $message";
}

void main(List<String> args) {
  // --------------------------------------------------------------------------
  // 1. try-catch block
  // --------------------------------------------------------------------------
  print("\n--- try-catch block ---");
  try {
    // Code that might throw an exception
    int result = 12 ~/ 0; // Integer division by zero will throw an exception
    print("The result is $result"); // This line will not be reached if an exception occurs
  } catch (error) {
    // Code that will be executed if an exception is thrown
    print("An error occurred: $error"); // Output: An error occurred: IntegerDivisionByZeroException
  }

  // --------------------------------------------------------------------------
  // 2. try-catch-finally block
  // --------------------------------------------------------------------------
  print("\n--- try-catch-finally block ---");
  try {
    // Code that might throw an exception
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (error) {
    // Code that will be executed if an exception is thrown
    print("An error occurred: $error");
  } finally {
    // Code that will be executed regardless of whether an exception is thrown or not
    print("This is the finally block and is always executed"); // Output: This is the finally block and is always executed
  }

  // --------------------------------------------------------------------------
  // 3. Throwing an exception
  // --------------------------------------------------------------------------
  print("\n--- Throwing an exception ---");
  depositMoney(int amount) {
    if (amount < 0) {
      throw Exception("Amount can't be less than zero"); // Throwing a custom exception
    }
    print("Deposited: $amount");
  }

  try {
    depositMoney(-200);
  } catch (error) {
    print("Error during deposit: $error"); // Output: Error during deposit: Exception: Amount can't be less than zero
  } finally {
    print("Transaction completed"); // Output: Transaction completed
  }

  // --------------------------------------------------------------------------
  // 4. Catching specific exception types using 'on'
  // --------------------------------------------------------------------------
  print("\n--- Catching specific exception types using 'on' ---");
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } on IntegerDivisionByZeroException {
    print("Cannot divide by zero!"); // Output: Cannot divide by zero!
  } catch (error) {
    print("An unexpected error occurred: $error");
  }

  // --------------------------------------------------------------------------
  // 5. Catching exception with stack trace
  // --------------------------------------------------------------------------
  print("\n--- Catching exception with stack trace ---");
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e, s) {
    print("Exception: $e"); // Output: Exception: IntegerDivisionByZeroException
    print("Stack trace: $s"); // Output: Stack trace: #0      IntegerDivisionByZeroException._throwNew (dart:core-patch/errors_patch.dart:22:5)
  }

  // --------------------------------------------------------------------------
  // 6. Rethrowing an exception
  // --------------------------------------------------------------------------
  print("\n--- Rethrowing an exception ---");
  void rethrowExample() {
    try {
      int result = 12 ~/ 0;
      print("The result is $result");
    } catch (e) {
      print("Caught an exception locally: $e");
      rethrow; // Rethrow the exception to be handled by the caller
    }
  }
  // --------------------------------------------------------------------------
  // 7. Custom Exceptions
  // --------------------------------------------------------------------------
  print("\n--- Custom Exceptions ---");

  void withdraw(int balance, int amount) {
    if (amount > balance) {
      throw InsufficientFundsException("Withdrawal amount exceeds balance");
    }
    print("Withdrew: $amount");
  }

  try {
    withdraw(100, 200);
  } on InsufficientFundsException catch (e) {
    print(e); // Output: InsufficientFundsException: Withdrawal amount exceeds balance
  } catch (e) {
    print("An unexpected error occurred: $e");
  }
  try {
    withdraw(100, 200);
  } on InsufficientFundsException catch (e) {
    print(e); // Output: InsufficientFundsException: Withdrawal amount exceeds balance
  } catch (e) {
    print("An unexpected error occurred: $e");
  }

  // --------------------------------------------------------------------------
  // 8. Using assert for debugging
  // --------------------------------------------------------------------------
  print("\n--- Using assert for debugging ---");
  int age = -5;
  // assert(age >= 0, "Age cannot be negative"); // This will throw an error in debug mode
  // If you uncomment the above line and run in debug mode, it will throw an error.
  // assert is only for development mode.
  if (age < 0) {
    print("Age cannot be negative");
  }

  // --------------------------------------------------------------------------
  // 9. Exception in Asynchronous code
  // --------------------------------------------------------------------------
  print("\n--- Exception in Asynchronous code ---");
  Future<void> fetchData() async {
    try {
      // Simulate an asynchronous operation that might fail
      await Future.delayed(Duration(seconds: 1));
      throw Exception("Failed to fetch data");
    } catch (e) {
      print("Error in asynchronous operation: $e"); // Output: Error in asynchronous operation: Exception: Failed to fetch data
    }
  }

  fetchData();
}
