// Printing in Dart

/// This file demonstrates various ways to print data to the console in Dart.
/// Printing is a fundamental operation for debugging, displaying information,
/// and interacting with the user.

main() {
  // --------------------------------------------------------------------------
  // String Printing
  // --------------------------------------------------------------------------

  /// **Basic String Printing:**
  /// The `print()` function is used to output data to the console.
  /// Strings can be enclosed in either single quotes (`'`) or double quotes (`"`).
  print('Hello World'); // Output: Hello World
  print("Hello World"); // Output: Hello World

  /// **Using Quotes Within Strings:**
  /// To include single quotes within a string, use double quotes to enclose the string, and vice versa.
  /// Alternatively, you can escape the inner quote with a backslash (`\`).
  print("'You Name'"); // Output: 'You Name'
  print('"You Name"'); // Output: "You Name"
  print("\"You Name\""); // Output: "You Name"
  print('I\'m Usama Sarwar.'); // Output: I'm Usama Sarwar.

  /// **Special Characters:**
  /// Some characters have special meanings. For example, `$` is used for string interpolation.
  /// To print a literal `$`, escape it with a backslash (`\$`).
  print('\$100'); // Output: $100

  /// **String Interpolation:**
  /// String interpolation allows you to embed variables or expressions directly within a string.
  /// Use the `$` symbol followed by the variable name or an expression enclosed in curly braces `{}`.
  int num = 0;
  print(num); // Output: 0
  print("Value of Num is $num"); // Output: Value of Num is 0
  print("Value of Num is ${num}"); // Output: Value of Num is 0
  print("Value of Num is ${num + 5}"); // Output: Value of Num is 5
  print("Value of Num is ${num.toString()}"); // Output: Value of Num is 0

  /// **String Concatenation:**
  /// You can also combine strings using the `+` operator.
  /// When concatenating a string with a non-string value, you need to convert the non-string value to a string using `.toString()`.
  print("Value of Num is " + num.toString()); // Output: Value of Num is 0
  print("Hello " + "World"); // Output: Hello World

  /// **Multiline Strings:**
  /// Use triple quotes (`'''` or `"""`) to create multiline strings.
  print("""
  This is a
  multiline
  string.
  """);
  // Output:
  //   This is a
  //   multiline
  //   string.

  print('''
  This is another
  multiline
  string.
  ''');
  // Output:
  //   This is another
  //   multiline
  //   string.

  // --------------------------------------------------------------------------
  // Other Data Type Printing
  // --------------------------------------------------------------------------

  /// **Integer Printing:**
  /// Integers are whole numbers.
  print(25); // Output: 25

  /// **Double Printing:**
  /// Doubles are floating-point numbers (numbers with decimal places).
  print(25.5); // Output: 25.5

  /// **Boolean Printing:**
  /// Booleans represent true or false values.
  print(true); // Output: true
  print(false); // Output: false

  /// **List Printing:**
  /// Lists are ordered collections of items.
  print(["Usama", "Sarwar", 27, true]); // Output: [Usama, Sarwar, 27, true]

  /// **Map Printing:**
  /// Maps are collections of key-value pairs.
  print({"firstName": "Usama", "lastName": "Sarwar"}); // Output: {firstName: Usama, lastName: Sarwar}

  /// **Set Printing:**
  /// Sets are unordered collections of unique items.
  print({"Pakistan", "India", "China"}); // Output: {Pakistan, India, China}

  /// **Printing Null:**
  /// Represents the absence of a value.
  print(null); // Output: null

  /// **Printing Expressions:**
  /// You can print the result of expressions directly.
  print(5 + 3); // Output: 8
  print(10 > 5); // Output: true
  print("Hello".length); // Output: 5
}
