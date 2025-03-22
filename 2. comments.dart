// Comments in Dart

/// This file demonstrates various ways to add comments in Dart code.
/// Comments are essential for explaining code, improving readability,
/// and generating documentation.

main() {
  // --------------------------------------------------------------------------
  // Single-Line Comments
  // --------------------------------------------------------------------------

  // This is a single-line comment.
  // Single-line comments start with two forward slashes (//).
  // They are used to add short explanations or notes on a single line.
  print("Hello, World!"); // This comment explains what this line does.

  // You can also use single-line comments to temporarily disable code.
  // print("This line is commented out.");

  // --------------------------------------------------------------------------
  // Multi-Line Comments
  // --------------------------------------------------------------------------

  /*
    This is a multi-line comment.
    Multi-line comments start with a forward slash and an asterisk (/*)
    and end with an asterisk and a forward slash (*/).
    They are used for longer explanations or to comment out multiple lines of code.
  */

  /*
    You can also use multi-line comments to temporarily disable
    large blocks of code.
    print("This line is commented out.");
    print("So is this line.");
  */

  // --------------------------------------------------------------------------
  // Documentation Comments
  // --------------------------------------------------------------------------

  /// This is a documentation comment.
  /// Documentation comments start with three forward slashes (///).
  /// They are used to generate API documentation for your code.
  /// These comments are typically placed above classes, functions,
  /// and variables to describe their purpose and usage.
  ///
  /// You can use Markdown syntax within documentation comments for formatting.
  /// For example, you can use:
  ///   - **bold** text
  ///   - *italic* text
  ///   - `code` snippets
  ///   - links
  ///   - numbered lists
  ///     1. item 1
  ///     2. item 2
  ///   - bulleted lists
  ///     * item 1
  ///     * item 2
  ///
  /// You can also use special tags like:
  ///   - `@param`: Describes a function parameter.
  ///   - `@return`: Describes the return value of a function.
  ///   - `@throws`: Describes exceptions that might be thrown.
  ///   - `@deprecated`: Indicates that a feature is deprecated.
  ///
  /// Example:
  /// ```dart
  /// int add(int a, int b) {
  ///   return a + b;
  /// }
  /// ```
  print("Documentation comments are useful!");

  /*
   * This is another way to write a documentation comment.
   * It starts with a forward slash and two asterisks (/**)
   * and ends with an asterisk and a forward slash (*/).
   * This style is also used for generating documentation.
   *
   * This style is useful for multi-line documentation comments.
   * You can use all the same markdown features as with `///`
   *
   * Example:
   * ```dart
   * int subtract(int a, int b) {
   *   return a - b;
   * }
   * ```
   */
  print("This is another way to write documentation comments");
}

/// This function adds two numbers.
///
/// It takes two integers as input and returns their sum.
///
/// Example:
/// ```dart
/// int result = add(5, 3); // result will be 8
/// ```
///
/// @param a The first number.
/// @param b The second number.
/// @return The sum of a and b.
int add(int a, int b) {
  return a + b;
}

/*
 * This function subtracts two numbers.
 *
 * It takes two integers as input and returns their difference.
 *
 * Example:
 * ```dart
 * int result = subtract(5, 3); // result will be 2
 * ```
 *
 * @param a The first number.
 * @param b The second number.
 * @return The difference of a and b.
 */
int subtract(int a, int b) {
  return a - b;
}

/// This class represents a person.
///
/// It contains information about the person's name and age.
///
/// Example:
/// ```dart
/// Person person = Person("Alice", 30);
/// print(person.name); // Output: Alice
/// ```
class Person {
  /// The name of the person.
  String name;

  /// The age of the person.
  int age;

  /// Creates a new [Person] object.
  ///
  /// @param name The name of the person.
  /// @param age The age of the person.
  Person(this.name, this.age);
}
