/// Dart Functions
///
/// This code lab will guide you through the essentials of functions in Dart.
/// You'll learn about different function types, parameters, scope, and more.
///
/// How to use this code lab:
/// 1. Copy and paste the code into a Dart file (e.g., `functions_codelab.dart`).
/// 2. Run the file using `dart functions_codelab.dart`.
/// 3. Experiment by modifying the code and observing the results.

///1. Basic Function Syntax
///
/// Functions are blocks of reusable code. Here's the basic syntax:
///
/// ```dart
/// returnType functionName(parameter1, parameter2, ...) {
/// // Function body (code to be executed)
/// return value; // Optional: If returnType is not void
/// }
/// ```
///
/// Example:
import 'dart:math';

void main() {
  // Function with no return type and no parameters
  void greet() {
    print("Hello, Dart!");
  }

  greet(); // Output: Hello, Dart!

  ///2. Functions with Parameters
  ///
  /// Functions can take input values called parameters.
  ///
  /// Example:

  // Function with parameters
  void greetByName(String name) {
    print("Hello, $name!");
  }

  greetByName("Alice"); // Output: Hello, Alice!
  greetByName("Bob"); // Output: Hello, Bob!

  ///3. Functions with Return Values
  ///
  /// Functions can return a value.
  ///
  /// Example:

  // Function with a return value
  String getGreeting() {
    return "Greetings!";
  }

  print(getGreeting()); // Output: Greetings!

  // Function with parameters and a return value
  int add(int a, int b) {
    return a + b;
  }

  print(add(5, 3)); // Output: 8

  ///4. Built-in Functions
  ///
  /// Dart has many built-in functions. Here are a few:
  ///
  /// Example:

  print("Hello".length); // Output: 5 (string length)
  print(int.parse("123")); // Output: 123 (string to integer)
  print(double.parse("3.14")); // Output: 3.14 (string to double)
  print(10.toString()); // Output: 10 (integer to string)

  ///5. Anonymous Functions
  ///
  /// Functions without a name. Useful for short, one-time operations.
  ///
  /// Example:

  // Anonymous function assigned to a variable
  var multiply = (int x, int y) {
    return x * y;
  };

  print(multiply(4, 2)); // Output: 8

  ///6. Arrow Functions (Lambda Functions)
  ///
  /// A concise way to write functions with a single expression.
  ///
  /// Example:

  // Arrow function
  int subtract(int a, int b) => a - b;

  print(subtract(10, 4)); // Output: 6

  ///7. Function Parameters: Named and Optional
  ///
  /// Named Parameters:
  ///
  /// ```dart
  /// void myFunction({String? name, int? age}) { ... }
  /// ```
  ///
  /// Optional Positional Parameters:
  ///
  /// ```dart
  /// void myFunction(String name, [int? age]) { ... }
  /// ```
  ///
  /// Default Parameter Values:
  ///
  /// ```dart
  /// void myFunction(String name, {int age = 18}) { ... }
  /// ```
  ///
  /// Required Named Parameters:
  ///
  /// ```dart
  /// void myFunction({required String name, required int age}) { ... }
  /// ```
  ///
  /// Example:

  void printDetails(String name, {int age = 30, String? city}) {
    print("Name: $name, Age: $age");
    if (city != null) {
      print("City: $city");
    }
  }

  printDetails("Charlie"); // Output: Name: Charlie, Age: 30
  printDetails("David", age: 25); // Output: Name: David, Age: 25
  printDetails("Eve", city: "New York"); // Output: Name: Eve, Age: 30, City: New York
  printDetails("Frank", age: 40, city: "London"); // Output: Name: Frank, Age: 40, City: London

  ///8. Scope
  ///
  /// Where variables are accessible.
  ///
  /// Example:

  String globalVar = "I'm global"; // Global scope

  void showScope() {
    String localVar = "I'm local"; // Local scope
    print(globalVar); // Accessible
    print(localVar); // Accessible

    void innerFunction() {
      print(globalVar); // Accessible (lexical scope)
      print(localVar); // Accessible (lexical scope)
    }

    innerFunction();
  }

  showScope();
  // print(localVar); // Error: localVar is not accessible here

  ///9. Recursion
  ///
  /// A function calling itself. Be careful with base cases!
  ///
  /// Example:

  int factorial(int n) {
    if (n == 0) {
      return 1; // Base case
    } else {
      return n * factorial(n - 1); // Recursive call
    }
  }

  print(factorial(5)); // Output: 120

  ///10. Higher-Order Functions
  ///
  /// Functions that take other functions as arguments.
  ///
  /// Example:

  void operate(int a, int b, int Function(int, int) operation) {
    print(operation(a, b));
  }

  operate(10, 5, add); // Output: 15 (using the 'add' function from earlier)
  operate(10, 5, subtract); // Output: 5 (using the 'subtract' function from earlier)

  ///11. Closures
  ///
  /// Inner functions that remember their outer scope.
  ///
  /// Example:

  Function makeAdder(int addBy) {
    return (int i) => addBy + i;
  }

  var add2 = makeAdder(2);
  var add5 = makeAdder(5);
  print(add2(3)); // Output: 5
  print(add5(3)); // Output: 8

  ///12. Functions and Collections
  ///
  /// Functions work great with lists and other collections.
  ///
  /// Example:

  List<int> numbers = [1, 2, 3, 4, 5];

  numbers.forEach((number) => print(number * 2)); // Output: 2, 4, 6, 8, 10

  List<String> stringNumbers = numbers.map((number) => number.toString()).toList();
  print(stringNumbers); // Output: [1, 2, 3, 4, 5]

  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();
  print(evenNumbers); // Output: [2, 4]

  ///13. Math in Dart
  ///
  /// Dart provides a `dart:math` library for mathematical operations.
  ///
  /// - Import:
  /// ```dart
  /// import 'dart:math';
  /// ```
  /// - Common Functions:
  /// - `min(a, b)`: Returns the minimum of `a` and `b`.
  /// - `max(a, b)`: Returns the maximum of `a` and `b`.
  /// - `pow(base, exponent)`: Returns `base` raised to the power of `exponent`.
  /// - `sqrt(x)`: Returns the square root of `x`.
  /// - `sin(x)`, `cos(x)`, `tan(x)`: Trigonometric functions.
  /// - `log(x)`: Returns the natural logarithm of `x`.
  /// - `exp(x)`: Returns `e` raised to the power of `x`.
  /// - `Random()`: Generates random numbers.
  /// - `pi`: The value of pi.
  /// - `e`: The value of e.
  /// - Example:
  print(min(5, 10)); // Output: 5
  print(max(5, 10)); // Output: 10
  print(pow(2, 3)); // Output: 8.0
  print(sqrt(16)); // Output: 4.0
  print(pi); // Output: 3.141592653589793
  print(e); // Output: 2.718281828459045
  var random = Random();
  print(random.nextInt(10)); // Output: A random integer between 0 and 9
}
