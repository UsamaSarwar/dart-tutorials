/// Variables and Data Types in Dart
///
/// This file explores variables, data types, and naming conventions in Dart.
/// Understanding these concepts is crucial for writing effective Dart code.

// ignore_for_file: equal_elements_in_set, unused_local_variable

void main() {
  // --------------------------------------------------------------------------
  // Primitive Data Types
  // --------------------------------------------------------------------------

  /// **String:** Represents a sequence of characters.
  ///
  /// Strings are used to store text data. They can be enclosed in single quotes (`'`) or double quotes (`"`).
  String myName = "Usama Sarwar";
  print(myName); // Output: Usama Sarwar

  String singleQuoteString = 'This is a string with single quotes.';
  print(singleQuoteString); // Output: This is a string with single quotes.

  String doubleQuoteString = "This is a string with double quotes.";
  print(doubleQuoteString); // Output: This is a string with double quotes.

  String multilineString = """
    This is a
    multiline string.
    """;
  print(multilineString);
  // Output:
  //     This is a
  //     multiline string.

  /// **Integer (int):** Represents whole numbers without decimal points.
  ///
  /// Integers can be positive, negative, or zero.
  int myAge = 25;
  print(myAge); // Output: 25

  int negativeNumber = -10;
  print(negativeNumber); // Output: -10

  int zero = 0;
  print(zero); // Output: 0

  /// **Double (double):** Represents floating-point numbers (numbers with decimal points).
  ///
  /// Doubles are used when you need to represent fractional values.
  double myHeight = 5.8;
  print(myHeight); // Output: 5.8

  double pi = 3.14159;
  print(pi); // Output: 3.14159

  double fractionalNumber = -2.75;
  print(fractionalNumber); // Output: -2.75

  /// **Boolean (bool):** Represents a logical value, either `true` or `false`.
  ///
  /// Booleans are used for conditional logic and comparisons.
  bool isAdult = true;
  print(isAdult); // Output: true

  bool isStudent = false;
  print(isStudent); // Output: false

  // --------------------------------------------------------------------------
  // Non-Primitive Data Types (Collections)
  // --------------------------------------------------------------------------

  /// **List:** An ordered collection of items.
  ///
  /// Lists can contain items of the same data type or mixed data types.
  /// List index starts from 0.
  List<String> stringList = ["Usama", "Sarwar"]; // List of Strings
  print(stringList); // Output: [Usama, Sarwar]
  print(stringList[0]); // Output: Usama
  print(stringList[1]); // Output: Sarwar

  List mixedList = ["Usama", "Sarwar", 25, true, 23.3, 25]; // List of dynamic data types
  print(mixedList); // Output: [Usama, Sarwar, 25, true, 23.3, 25]
  print(mixedList[2]); // Output: 25

  /// **Map:** A collection of key-value pairs.
  ///
  /// Maps are used to store data in a structured way, where each value is associated with a unique key.
  Map<String, String> myMap = {"firstName": "Usama", "lastName": "Sarwar"};
  print(myMap); // Output: {firstName: Usama, lastName: Sarwar}
  print(myMap["firstName"]); // Output: Usama
  print(myMap["lastName"]); // Output: Sarwar

  Map<String, dynamic> mixedMap = {
    "name": "Usama",
    "age": 25,
    "isStudent": true,
    "height": 5.8
  };
  print(mixedMap); // Output: {name: Usama, age: 25, isStudent: true, height: 5.8}
  print(mixedMap["age"]); // Output: 25

  /// **Set:** An unordered collection of unique items.
  ///
  /// Sets are used when you need to store a collection of items without duplicates.
  Set<String> mySet = {"Pakistan", "India", "China"}; // Set of Strings (No Duplicates)
  print(mySet); // Output: {Pakistan, India, China}

  Set<int> uniqueNumbers = {1, 2, 3, 3, 4, 4, 5};
  print(uniqueNumbers); // Output: {1, 2, 3, 4, 5} (Duplicates are removed)

  // --------------------------------------------------------------------------
  // Dynamic Data Types
  // --------------------------------------------------------------------------

  /// **dynamic:** A data type that can hold any type of value.
  ///
  /// The `dynamic` type allows you to change the data type of a variable during runtime.
  dynamic myDynamicVariable = "Usama"; // Initially a String
  print(myDynamicVariable); // Output: Usama
  myDynamicVariable = 25; // Now an Integer
  print(myDynamicVariable); // Output: 25
  myDynamicVariable = true; // Now a Boolean
  print(myDynamicVariable); // Output: true

  /// **var:** A keyword that allows Dart to infer the data type of a variable.
  ///
  /// Once the data type is inferred, it cannot be changed.
  var myVar = "Sarwar"; // Dart infers this as a String
  print(myVar); // Output: Sarwar
  // myVar = 25; // Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  // print(myVar); // This line will cause an error.

  var myVarInt = 25; // Dart infers this as an Integer
  print(myVarInt); // Output: 25
  // myVarInt = "26"; // Error: A value of type 'String' can't be assigned to a variable of type 'int'.
  // print(myVarInt); // This line will cause an error.

  // --------------------------------------------------------------------------
  // Variables Naming Conventions and Rules
  // --------------------------------------------------------------------------

  /// **Rules for Naming Variables in Dart:**
  ///
  /// 1.  **Allowed Characters:** Variable names can only contain letters (a-z, A-Z), numbers (0-9), and underscores (\_).
  ///     *   Example: `student_1`, `myVariable`, `_privateVariable`
  ///
  /// 2.  **Start with Letter or Underscore:** Variable names must start with a letter or an underscore.
  ///     *   Example: `student_1`, `_student`, `myVariable`
  ///     *   Invalid: `1_student` (starts with a number)
  ///
  /// 3.  **Cannot Start with a Number:** Variable names cannot start with a number.
  ///     *   Invalid: `1_student`, `2ndVariable`
  ///
  /// 4.  **No Spaces:** Variable names cannot contain spaces.
  ///     *   Invalid: `student name`, `my variable`
  ///
  /// 5.  **No Keywords:** Variable names cannot be Dart keywords (e.g., `int`, `String`, `if`, `else`, `for`, `while`, `class`, `void`, `return`, `true`, `false`, `null`, `dynamic`, `var`, `final`, `const`).
  ///     *   Invalid: `int`, `String`, `if`, `else`
  ///
  /// 6.  **No Reserved Words:** Variable names cannot be reserved words (words that have special meaning in Dart).
  ///     *   Invalid: `abstract`, `as`, `async`, `await`, `case`, `catch`, `class`, `const`, `continue`, `default`, `deferred`, `do`, `dynamic`, `else`, `enum`, `export`, `extends`, `external`, `factory`, `false`, `final`, `finally`, `for`, `get`, `if`, `implements`, `import`, `in`, `interface`, `is`, `library`, `mixin`, `new`, `null`, `operator`, `part`, `rethrow`, `return`, `set`, `static`, `super`, `switch`, `sync`, `this`, `throw`, `true`, `try`, `typedef`, `var`, `void`, `while`, `with`, `yield`
  ///
  /// 7.  **No Built-in Identifiers:** Avoid using built-in identifiers as variable names.
  ///     *   Invalid: `as`, `on`, `show`, `hide`, `of`
  ///
  /// 8.  **No Built-in Types:** Avoid using built-in types as variable names.
  ///     *   Invalid: `int`, `String`, `bool`, `double`, `List`, `Map`, `Set`
  ///
  /// 9.  **No Built-in Functions:** Avoid using built-in function names as variable names.
  ///     *   Invalid: `print`, `toString`, `length`
  ///
  /// 10. **No Built-in Constants:** Avoid using built-in constant names as variable names.
  ///     *   Invalid: `true`, `false`, `null`
  ///
  /// 11. **Case-Sensitive:** Dart is case-sensitive, so `myVariable` and `MyVariable` are considered different variables.
  ///
  /// 12. **Camel Case:** Use camel case for variable names (e.g., `myVariableName`, `studentAge`).
  ///
  /// 13. **Descriptive Names:** Choose descriptive names that clearly indicate the purpose of the variable.
  ///     *   Good: `studentName`, `totalPrice`
  ///     *   Bad: `x`, `y`, `temp`

  // --------------------------------------------------------------------------
  // Examples of Valid and Invalid Variable Names
  // --------------------------------------------------------------------------

  // Valid variable names
  String studentName = "Alice";
  int studentAge = 20;
  double studentGPA = 3.8;
  bool isEnrolled = true;
  String _privateVariable = "This is a private variable";
  int student_1 = 1;

  // Invalid variable names (will cause errors)
  // int 1student = 1; // Error: Cannot start with a number
  // String student name = "Bob"; // Error: Cannot contain spaces
  // int int = 10; // Error: Cannot be a keyword
  // bool true = true; // Error: Cannot be a constant
  // String print = "Hello"; // Error: Cannot be a built-in function
  // String class = "A"; // Error: Cannot be a keyword
  // String as = "A"; // Error: Cannot be a built-in identifier

  // --------------------------------------------------------------------------
  // More Examples
  // --------------------------------------------------------------------------

  // Example of using var
  var myVarString = "This is a string";
  print(myVarString); // Output: This is a string

  var myVarDouble = 3.14;
  print(myVarDouble); // Output: 3.14

  var myVarBool = false;
  print(myVarBool); // Output: false

  // Example of using dynamic
  dynamic myDynamicList = [1, 2, 3];
  print(myDynamicList); // Output: [1, 2, 3]

  myDynamicList = {"key": "value"};
  print(myDynamicList); // Output: {key: value}
}
