/*
 * Assert in Dart
 * 
 * The `assert` statement is used during development to check for conditions that should always be true. 
 * If the condition evaluates to false, the program terminates with an AssertionError.
 * This is useful for catching bugs early in the development process.
 * 
 * Syntax:
 * assert(condition, [optionalMessage]);
 * 
 * - condition: A boolean expression that should evaluate to true.
 * - optionalMessage: A message that is displayed if the assertion fails.
 * 
 * Note: Assertions are only checked in debug mode. They are ignored in production mode.
 * 
 * Example:
 * In this codelab, we will demonstrate how to use `assert` with various examples.
 */

void main() {
  // Example 1: Basic assert
  int age = 25;
  assert(age > 0, 'Age must be greater than zero');
  
  // Example 2: Assert with a function
  int getPositiveNumber() {
    return -5; // This will cause an assertion error
  }
  int number = getPositiveNumber();
  assert(number > 0, 'Number must be positive');
  
  // Example 3: Assert without a message
  String name = 'Dart';
  assert(name.isNotEmpty);
  
  // Example 4: Assert with complex condition
  List<int> numbers = [1, 2, 3, 4, 5];
  assert(numbers.length == 5 && numbers[0] == 1, 'List must have 5 elements and start with 1');
  
  // Example 5: Assert with a custom error message
  double temperature = -10.0;
  assert(temperature >= 0, 'Temperature cannot be negative');
  
  print('All assertions passed!');
}