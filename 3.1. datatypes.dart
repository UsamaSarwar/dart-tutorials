/// Data Types in Dart
///
/// This codelab provides a comprehensive guide to understanding and using
/// data types in Dart, including numbers, strings, booleans, lists, maps,
/// sets, runes, null, and type conversion. It also covers exceptions and
/// best practices.

void main() {
  // --------------------------------------------------------------------------
  // Introduction to Data Types
  // --------------------------------------------------------------------------

  /// **What are Data Types?**
  ///
  /// Data types categorize the different kinds of data you use in your code.
  /// They specify the type of value a variable can hold, such as numbers,
  /// text, or logical values. Dart is an optionally-typed language, meaning
  /// you can explicitly declare types or let Dart infer them.

  // --------------------------------------------------------------------------
  // Numbers (int, double, num)
  // --------------------------------------------------------------------------

  /// **Numbers:**
  ///
  /// Dart uses three main types for numbers:
  ///   - `int`: Represents whole numbers (integers) without decimal points.
  ///   - `double`: Represents floating-point numbers (numbers with decimal points).
  ///   - `num`: A supertype for both `int` and `double`, allowing you to store either type.

  print("\n--- Numbers ---");

  // Declaring Variables
  int num1 = 100; // Integer
  double num2 = 130.2; // Double
  num num3 = 50; // Can be int or double
  num num4 = 50.4; // Can be int or double

  // Performing Arithmetic
  num sum = num1 + num2 + num3 + num4;

  // Printing Information
  print("Num 1 is $num1"); // Output: Num 1 is 100
  print("Num 2 is $num2"); // Output: Num 2 is 130.2
  print("Num 3 is $num3"); // Output: Num 3 is 50
  print("Num 4 is $num4"); // Output: Num 4 is 50.4
  print("Sum is $sum"); // Output: Sum is 330.6

  /// **Rounding Double Values:**
  ///
  /// The `.toStringAsFixed(n)` method rounds a double to `n` decimal places.

  print("\n--- Rounding Double Values ---");

  double price = 1130.2232323233233;
  print(price.toStringAsFixed(2)); // Output: 1130.22

  // --------------------------------------------------------------------------
  // Strings (String)
  // --------------------------------------------------------------------------

  /// **Strings:**
  ///
  /// Strings represent sequences of characters (text). They can be enclosed in
  /// single quotes (`'`) or double quotes (`"`).

  print("\n--- Strings ---");

  // Declaring Values
  String schoolName = "Diamond School";
  String address = "New York 2140";

  // Printing Values
  print("School name is $schoolName and address is $address");
  // Output: School name is Diamond School and address is New York 2140

  /// **Multi-Line Strings:**
  ///
  /// Use triple quotes (`'''` or `"""`) to create strings that span multiple lines.

  print("\n--- Multi-Line Strings ---");

  // Multi-Line Using Single Quotes
  String multiLineText = '''
This is Multi Line Text
with 3 single quote
I am also writing here.
''';

  // Multi-Line Using Double Quotes
  String otherMultiLineText = """
This is Multi Line Text
with 3 double quote
I am also writing here.
""";

  // Printing Information
  print("Multiline text is $multiLineText");
  /*
    Output:
    Multiline text is 
    This is Multi Line Text
    with 3 single quote
    I am also writing here.
  */
  print("Other multiline text is $otherMultiLineText");
  /*
    Output:
    Other multiline text is 
    This is Multi Line Text
    with 3 double quote
    I am also writing here.
  */

  /// **Special Characters in Strings:**
  ///
  /// Special characters like `\n` (newline) and `\t` (tab) can be used within strings.

  print("\n--- Special Characters in Strings ---");

  // Using \n and \t
  print("I am from \nUS.");
  /*
    Output:
    I am from 
    US.
  */
  print("I am from \tUS."); // Output: I am from     US.

  /// **Raw Strings:**
  ///
  /// Raw strings (prefixed with `r`) treat backslashes and special characters
  /// as literal characters.

  print("\n--- Raw Strings ---");

  // Set price value
  num priceRaw = 10;
  String withoutRawString = "The value of price is \t $priceRaw"; // regular String
  String withRawString = r"The value of price is \t $priceRaw"; // raw String

  print("Without Raw: $withoutRawString");
  // Output: Without Raw: The value of price is      10
  print("With Raw: $withRawString");
  // Output: With Raw: The value of price is \t $priceRaw

  // --------------------------------------------------------------------------
  // Type Conversion
  // --------------------------------------------------------------------------

  /// **Type Conversion:**
  ///
  /// Dart allows you to convert between different data types.

  print("\n--- Type Conversion ---");

  /// **String to Int:**
  ///
  /// Use `int.parse()` to convert a string to an integer.
  print("\n--- String to Int ---");
  String strvalue = "1";
  print("Type of strvalue is ${strvalue.runtimeType}"); // Output: Type of strvalue is String
  int intvalue = int.parse(strvalue);
  print("Value of intvalue is $intvalue"); // Output: Value of intvalue is 1
  print("Type of intvalue is ${intvalue.runtimeType}"); // Output: Type of intvalue is int

  /// **String to Double:**
  ///
  /// Use `double.parse()` to convert a string to a double.
  print("\n--- String to Double ---");
  String strvalueDouble = "1.1";
  print("Type of strvalue is ${strvalueDouble.runtimeType}"); // Output: Type of strvalue is String
  double doublevalue = double.parse(strvalueDouble);
  print("Value of doublevalue is $doublevalue"); // Output: Value of doublevalue is 1.1
  print("Type of doublevalue is ${doublevalue.runtimeType}"); // Output: Type of doublevalue is double

  /// **Int to String:**
  ///
  /// Use `.toString()` to convert an integer to a string.
  print("\n--- Int to String ---");
  int one = 1;
  print("Type of one is ${one.runtimeType}"); // Output: Type of one is int
  String oneInString = one.toString();
  print("Value of oneInString is $oneInString"); // Output: Value of oneInString is 1
  print("Type of oneInString is ${oneInString.runtimeType}"); // Output: Type of oneInString is String

  /// **Double to Int:**
  ///
  /// Use `.toInt()` to convert a double to an integer (truncates the decimal part).
  print("\n--- Double to Int ---");
  double num1Double = 10.01;
  int num2Int = num1Double.toInt(); // converting double to int

  print("The value of num1 is $num1Double. Its type is ${num1Double.runtimeType}");
  // Output: The value of num1 is 10.01. Its type is double
  print("The value of num2 is $num2Int. Its type is ${num2Int.runtimeType}");
  // Output: The value of num2 is 10. Its type is int

  /// **Type Conversion Exceptions:**
  ///
  /// If you try to parse a string that is not a valid number, a `FormatException` will be thrown.
  print("\n--- Type Conversion Exceptions ---");
  try {
    String invalidNumber = "abc";
    int parsedNumber = int.parse(invalidNumber); // This will throw an exception
    print(parsedNumber);
  } catch (e) {
    print("Error: $e"); // Output: Error: FormatException: Invalid radix-10 number (at character 1)
  }

  // --------------------------------------------------------------------------
  // Booleans (bool)
  // --------------------------------------------------------------------------

  /// **Booleans:**
  ///
  /// Booleans represent logical values, either `true` or `false`.

  print("\n--- Booleans ---");

  bool isMarried = true;
  print("Married Status: $isMarried"); // Output: Married Status: true

  // --------------------------------------------------------------------------
  // Lists (List)
  // --------------------------------------------------------------------------

  /// **Lists:**
  ///
  /// Lists are ordered collections of items. They are also known as arrays.

  print("\n--- Lists ---");

  List<String> names = ["Raj", "John", "Max"];
  print("Value of names is $names"); // Output: Value of names is [Raj, John, Max]
  print("Value of names[0] is ${names[0]}"); // Output: Value of names[0] is Raj
  print("Value of names[1] is ${names[1]}"); // Output: Value of names[1] is John
  print("Value of names[2] is ${names[2]}"); // Output: Value of names[2] is Max

  // Finding Length of List
  int length = names.length;
  print("The Length of names is $length"); // Output: The Length of names is 3

  /// **List Index Out of Range Exception:**
  ///
  /// If you try to access an index that is outside the bounds of the list, a `RangeError` will be thrown.
  print("\n--- List Index Out of Range Exception ---");
  try {
    print(names[3]); // This will throw an exception
  } catch (e) {
    print("Error: $e"); // Output: Error: RangeError (index): Index out of range: index should be less than 3: 3
  }

  // --------------------------------------------------------------------------
  // Sets (Set)
  // --------------------------------------------------------------------------

  /// **Sets:**
  ///
  /// Sets are unordered collections of unique items. They do not allow duplicates.

  print("\n--- Sets ---");

  Set<String> weekday = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
  print(weekday); // Output: {Sun, Mon, Tue, Wed, Thu, Fri, Sat}

  Set<int> uniqueNumbers = {1, 2, 3, 3, 4, 4, 5};
  print(uniqueNumbers); // Output: {1, 2, 3, 4, 5} (Duplicates are removed)

  // --------------------------------------------------------------------------
  // Maps (Map)
  // --------------------------------------------------------------------------

  /// **Maps:**
  ///
  /// Maps store data in key-value pairs. Each key is unique, but values can be repeated.

  print("\n--- Maps ---");

  Map<String, String> myDetails = {
    'name': 'John Doe',
    'address': 'USA',
    'fathername': 'Soe Doe'
  };
  // displaying the output
  print(myDetails['name']); // Output: John Doe

  /// **Map Key Not Found Exception:**
  ///
  /// If you try to access a key that does not exist in the map, `null` will be returned.
  print("\n--- Map Key Not Found Exception ---");
  print(myDetails['mothername']); // Output: null

  // --------------------------------------------------------------------------
  // Var Keyword
  // --------------------------------------------------------------------------

  /// **Var Keyword:**
  ///
  /// The `var` keyword allows Dart to infer the data type of a variable.

  print("\n--- Var Keyword ---");

  var name = "John Doe"; // String
  var age = 20; // int

  print(name); // Output: John Doe
  print(age); // Output: 20

  // --------------------------------------------------------------------------
  // Runes
  // --------------------------------------------------------------------------

  /// **Runes:**
  ///
  /// Runes represent Unicode code points of strings.

  print("\n--- Runes ---");

  String value = "a";
  print(value.runes); // Output: (97)

  // --------------------------------------------------------------------------
  // Checking Runtime Type
  // --------------------------------------------------------------------------

  /// **Checking Runtime Type:**
  ///
  /// Use `.runtimeType` to check the data type of a variable at runtime.

  print("\n--- Checking Runtime Type ---");

  var a = 10;
  print(a.runtimeType); // Output: int
  print(a is int); // Output: true

  // --------------------------------------------------------------------------
  // Optionally Typed Language
  // --------------------------------------------------------------------------

  /// **Optionally Typed Language:**
  ///
  /// Dart is an optionally-typed language, supporting both static and dynamic typing.
  ///
  ///   - **Statically Typed:** Data types are known at compile time.
  ///   - **Dynamically Typed:** Data types are known at runtime.

  print("\n--- Optionally Typed Language ---");

  /// **Statically Typed Example:**
  ///
  /// If you use `var` and assign a value, the type is inferred and fixed.
  print("\n--- Statically Typed Example ---");
  var myVariable = 50; // You can also use int instead of var
  print(myVariable.runtimeType); // Output: int
  // myVariable = "Hello"; // this will give error
  // print(myVariable); // Error: A value of type 'String' can't be assigned to a variable of type 'int'.

  /// **Dynamically Typed Example:**
  ///
  /// If you use `dynamic`, the type can change at runtime.
  print("\n--- Dynamically Typed Example ---");
  dynamic myDynamicVariable = 50;
  print(myDynamicVariable.runtimeType); // Output: int
  myDynamicVariable = "Hello";
  print(myDynamicVariable.runtimeType); // Output: String
  print(myDynamicVariable); // Output: Hello
}
