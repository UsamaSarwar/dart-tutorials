/// Conditional Statements in Dart
///
/// This codelab provides a detailed guide on using conditional statements in Dart,
/// covering `if`, `if-else`, `if-else-if`, and `switch` statements. It also
/// includes information on potential exceptions, best practices, and tips for
/// writing robust and readable code.
///
/// Introduction
///
/// Conditional statements are fundamental to programming as they allow you to
/// control the flow of your program based on certain conditions. In Dart, you
/// can use `if`, `if-else`, `if-else-if`, and `switch` statements to make
/// decisions and execute different code blocks based on the outcome of these
/// conditions.
///
/// Core Concepts
///
/// 1.  Conditions: Conditions are expressions that evaluate to a boolean value
///     (`true` or `false`). They are used to determine whether a particular
///     code block should be executed.
/// 2.  `if` Statement: The `if` statement executes a block of code if a
///     specified condition is true.
/// 3.  `if-else` Statement: The `if-else` statement executes one block of
///     code if a condition is true and another block if the condition is
///     false.
/// 4.  `if-else-if` Ladder: The `if-else-if` ladder allows you to check
///     multiple conditions sequentially.
/// 5.  `switch` Statement: The `switch` statement allows you to select one of
///     many code blocks to execute based on the value of a variable.
/// 6. `break`: The `break` keyword is used to exit a `switch` statement.
/// 7. `default`: The `default` keyword is used in a `switch` statement to specify the code to run if no case matches.
///
/// Codelab: Conditional Statements
///
/// 1. `if` Statement
///
/// Objective: Execute a code block if a condition is true.
///
/// Code:

// ignore_for_file: dead_code

void main() {
  print("\n--- if Statement ---");
  int age = 20;
  if (age >= 18) {
    print("You are a voter.");
  }

  // Explanation:
  //
  // - `if (age >= 18)`: Checks if the value of `age` is greater than or equal
  //   to 18.
  // - `print("You are a voter.");`: This line is executed only if the
  //   condition `age >= 18` is true.
  //
  // Output:
  // You are a voter.

  /// 2. `if-else` Statement
  ///
  /// Objective: Execute one code block if a condition is true and another if
  /// it's false.
  ///
  /// Code:

  print("\n--- if-else Statement ---");
  int age2 = 12;
  if (age2 >= 18) {
    print("You are a voter.");
  } else {
    print("You are not a voter.");
  }

  // Explanation:
  //
  // - `if (age2 >= 18)`: Checks if the value of `age2` is greater than or
  //   equal to 18.
  // - `print("You are a voter.");`: This line is executed if the condition is
  //   true.
  // - `else`: If the condition is false, the code block under `else` is
  //   executed.
  // - `print("You are not a voter.");`: This line is executed if the
  //   condition `age2 >= 18` is false.
  //
  // Output:
  // You are not a voter.

  /// 3. `if-else` with Boolean Condition
  ///
  /// Objective: Execute one code block if a boolean variable is true and another if
  /// it's false.
  ///
  /// Code:

  print("\n--- if-else with Boolean ---");
  bool isMarried = false;
  if (isMarried) {
    print("You are married.");
  } else {
    print("You are single.");
  }

  // Explanation:
  //
  // - `if (isMarried)`: Checks if the value of `isMarried` is true.
  // - `print("You are married.");`: This line is executed if the condition is
  //   true.
  // - `else`: If the condition is false, the code block under `else` is
  //   executed.
  // - `print("You are single.");`: This line is executed if the
  //   condition `isMarried` is false.
  //
  // Output:
  // You are single.

  /// 4. `if-else-if` Ladder
  ///
  /// Objective: Check multiple conditions sequentially.
  ///
  /// Code:

  print("\n--- if-else-if Ladder ---");
  int noOfMonth = 5;

  if (noOfMonth == 1) {
    print("The month is Jan");
  } else if (noOfMonth == 2) {
    print("The month is Feb");
  } else if (noOfMonth == 3) {
    print("The month is Mar");
  } else if (noOfMonth == 4) {
    print("The month is Apr");
  } else if (noOfMonth == 5) {
    print("The month is May");
  } else if (noOfMonth == 6) {
    print("The month is Jun");
  } else if (noOfMonth == 7) {
    print("The month is Jul");
  } else if (noOfMonth == 8) {
    print("The month is Aug");
  } else if (noOfMonth == 9) {
    print("The month is Sep");
  } else if (noOfMonth == 10) {
    print("The month is Oct");
  } else if (noOfMonth == 11) {
    print("The month is Nov");
  } else if (noOfMonth == 12) {
    print("The month is Dec");
  } else {
    print("Invalid option given.");
  }

  // Explanation:
  //
  // - `if (noOfMonth == 1)`: Checks if `noOfMonth` is 1.
  // - `else if (noOfMonth == 2)`: If the first condition is false, this
  //   condition is checked.
  // - `else`: If none of the above conditions are true, the code block under
  //   `else` is executed.
  // - `print("Invalid option given.");`: This line is executed if `noOfMonth`
  //   is not between 1 and 12.
  //
  // Output:
  // The month is May

  /// 5. Finding the Greatest Number Among Three Numbers
  ///
  /// Objective: Determine the greatest number among three numbers.
  ///
  /// Code:

  print("\n--- Finding the Greatest Number ---");
  int num1 = 1200;
  int num2 = 1000;
  int num3 = 150;

  if (num1 > num2 && num1 > num3) {
    print("Num 1 is greater: i.e $num1");
  }
  if (num2 > num1 && num2 > num3) {
    print("Num2 is greater: i.e $num2");
  }
  if (num3 > num1 && num3 > num2) {
    print("Num3 is greater: i.e $num3");
  }

  // Explanation:
  //
  // - `if (num1 > num2 && num1 > num3)`: Checks if `num1` is greater than both
  //   `num2` and `num3`.
  // - `if (num2 > num1 && num2 > num3)`: Checks if `num2` is greater than both
  //   `num1` and `num3`.
  // - `if (num3 > num1 && num3 > num2)`: Checks if `num3` is greater than both
  //   `num1` and `num2`.
  //
  // Output:
  // Num 1 is greater: i.e 1200

  /// 6. `switch` Statement
  ///
  /// Objective: Select one of many code blocks to execute based on the value
  /// of a variable.
  ///
  /// Code:

  print("\n--- switch Statement ---");
  String grade = "A";
  switch (grade) {
    case "A":
      print("Excellent");
      break;
    case "B":
      print("Good");
      break;
    case "C":
      print("Fair");
      break;
    case "D":
      print("Poor");
      break;
    case "E":
      print("Fail");
      break;
    default:
      print("Invalid grade");
  }

  // Explanation:
  //
  // - `switch (grade)`: The `switch` statement evaluates the value of the
  //   `grade` variable.
  // - `case "A"`: If `grade` is "A", the code block under this case is
  //   executed.
  // - `break`: The `break` keyword is used to exit the `switch` statement
  //   after a case is matched.
  // - `default`: If none of the cases match, the code block under `default` is
  //   executed.
  // - `print("Invalid grade");`: This line is executed if `grade` is not "A",
  //   "B", "C", "D", or "E".
  //
  // Output:
  // Excellent

  /// 7. `if-else` statement for even or odd
  ///
  /// Objective: Check if a number is even or odd.
  ///
  /// Code:

  print("\n--- if-else Statement for Even or Odd ---");
  int num = 10;
  if (num % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }

  // Explanation:
  //
  // - `if (num % 2 == 0)`: Checks if the remainder of `num` divided by 2 is 0.
  // - `print("Even");`: This line is executed if the condition is true.
  // - `else`: If the condition is false, the code block under `else` is
  //   executed.
  // - `print("Odd");`: This line is executed if the condition `num % 2 == 0` is false.
  //
  // Output:
  // Even

  /// 8. `if-else-if` ladder for grades
  ///
  /// Objective: Assign grades based on marks.
  ///
  /// Code:

  print("\n--- if-else-if Ladder for Grades ---");
  int marks = 75;
  if (marks >= 90) {
    print("A grade");
  } else if (marks >= 80) {
    print("B grade");
  } else if (marks >= 70) {
    print("C grade");
  } else if (marks >= 60) {
    print("D grade");
  } else if (marks >= 40) {
    print("E grade");
  } else {
    print("Fail");
  }

  // Explanation:
  //
  // - `if (marks >= 90)`: Checks if `marks` is greater than or equal to 90.
  // - `else if (marks >= 80)`: If the first condition is false, this condition is checked.
  // - `else`: If none of the above conditions are true, the code block under `else` is executed.
  // - `print("Fail");`: This line is executed if `marks` is less than 40.
  //
  // Output:
  // C grade
}

/// Exceptions and Error Handling
///
/// 1.  No Specific Exceptions: Conditional statements themselves do not throw
///     specific exceptions. However, errors can occur within the code blocks
///     executed based on the conditions.
/// 2.  Logical Errors: Incorrect conditions can lead to unexpected behavior.
///     For example, if you use `if (age > 18)` instead of `if (age >= 18)`,
///     you might exclude valid cases.
/// 3.  `switch` Statement Fallthrough: If you forget to use `break` in a
///     `switch` statement, the code will "fall through" to the next case,
///     which can lead to unexpected behavior.
/// 4. `switch` statement type mismatch: If you use a `switch` statement with a variable of one type and the cases are of another type, it will not work.
///
/// Tricks and Best Practices
///
/// 1.  Clear Conditions: Use clear and concise conditions to make your code
///     easy to understand.
/// 2.  Proper Indentation: Use proper indentation to make your code readable.
/// 3.  Meaningful Variable Names: Use meaningful variable names to make your
///     code self-explanatory.
/// 4.  Avoid Deep Nesting: Avoid deeply nested `if` statements as they can
///     make your code hard to read and maintain. Consider using early returns
///     or refactoring your code.
/// 5.  Use `switch` for Multiple Cases: Use `switch` statements when you have
///     multiple cases based on the value of a single variable.
/// 6.  Use `break` in `switch`: Always use `break` at the end of each case in a `switch` statement to avoid fallthrough.
/// 7. Use `default` in `switch`: Always use `default` in a `switch` statement to handle unexpected values.
/// 8. Use `else` in `if-else`: Always use `else` in a `if-else` statement to handle unexpected values.
///
/// Conclusion
///
/// This guide has covered the fundamentals of conditional statements in Dart,
/// including `if`, `if-else`, `if-else-if`, and `switch` statements. By
/// understanding the core concepts, error handling techniques, and best
/// practices, you can create robust and user-friendly Dart applications.
/// Remember to always validate your conditions and handle potential logical
/// errors gracefully.
