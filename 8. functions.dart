/// Functions in Dart
/// Functions are first-class objects in Dart. This means that functions can be assigned to variables or passed as arguments to other functions.
/// Function(input1, input2, …) 
/// { // function body }

/// Syntax of a function
/// returnType functionName(input1, input2, …) {
///*  // function body
/// return value;
/// }

/// Types of Functions
/// 1. User-defined functions
/// 2. Built-in functions
/// 3. Anonymous functions
/// 4. Lambda functions
/// 5. Arrow functions

void main(List<String> args) {
  // User-defined functions
  // 1. Function with no return type and no input parameters
  // 2. Function with no return type and input parameters
  // 3. Function with return type and no input parameters
  // 4. Function with return type and input parameters

  // 1. Function with no return type and no input parameters
  void functionWithNoReturnTypeAndNoInputParameters() {
    print("Hi, I am a function with no return type and no input parameters");
  }

  functionWithNoReturnTypeAndNoInputParameters(); 
  // Output: Hi, I am a function with no return type and no input parameters

  // 2. Function with no return type and input parameters
  void functionWithNoReturnTypeAndInputParameters(String name, int age) {
    print("Hi, I am $name and I am $age years old"); // Hi, I am Usama and I am 27 years old
  }

  functionWithNoReturnTypeAndInputParameters("Usama", 27);
  // Output: Hi, I am Usama and I am 27 years old

  // 3. Function with return type and no input parameters
  String functionWithReturnTypeAndNoInputParameters() {
    return "Hi, I am a function with return type and no input parameters";
  }

  print(functionWithReturnTypeAndNoInputParameters());
  // Output: Hi, I am a function with return type and no input parameters

  // 4. Function with return type and input parameters
  String functionWithReturnTypeAndInputParameters(String name, int age) {
    return "Hi, I am $name and I am $age years old";
  }

  print(functionWithReturnTypeAndInputParameters("Usama", 27));
  // Output: Hi, I am Usama and I am 27 years old

  // Built-in functions
  // 1. print()
  // 2. int.parse()
  // 3. double.parse()
  // 4. toString()
  // and so on...

  // Anonymous functions
  // Anonymous functions are functions without a name.
  // Anonymous functions are also called lambda functions or arrow functions.

  // 1. Anonymous function with no return type and no input parameters
  var anonymousFunctionWithNoReturnTypeAndNoInputParameters = () {
    print(
        "Hi, I am an anonymous function with no return type and no input parameters");
  };
  anonymousFunctionWithNoReturnTypeAndNoInputParameters();
  // Output: Hi, I am an anonymous function with no return type and no input parameters

  // 2. Anonymous function with no return type and input parameters
  var anonymousFunctionWithNoReturnTypeAndInputParameters =
      (String name, int age) {
    print("Hi, I am $name and I am $age years old");
  };
  anonymousFunctionWithNoReturnTypeAndInputParameters("Usama", 27);
  // Output: Hi, I am Usama and I am 27 years old

  // Lambda functions
  // Lambda functions are anonymous functions with a single expression.
  // Lambda functions are also called arrow functions.

  // 1. Lambda function with no return type and no input parameters
  var lambdaFunctionWithNoReturnTypeAndNoInputParameters = () => print(
      "Hi, I am a lambda function with no return type and no input parameters");
  lambdaFunctionWithNoReturnTypeAndNoInputParameters();
  // Output: Hi, I am a lambda function with no return type and no input parameters

  // Example of a lambda function
  // main () => print('Hello World');
  //? Above code is equivalent to the following code:
  // void main ()
  // {
  //   print('Hello World');
  // }

  /// int sum(int a, int b) {
  ///  return a + b;
  /// }
  int sum(int a, int b) => a + b;
  print(sum(12, 12)); // 24

  /// Recrusive function
  /// A recursive function is a function that calls itself.

  /// Recrusive function with no return type and no input parameters
  // ignore: unused_element
  void recrusiveFunctionWithNoReturnTypeAndNoInputParameters() {
    print(
        "Hi, I am a recrusive function with no return type and no input parameters");
    recrusiveFunctionWithNoReturnTypeAndNoInputParameters();
  }
  //! recrusiveFunctionWithNoReturnTypeAndNoInputParameters();
  //! The above function will cause a stack overflow error.

  /// Recursion Example
  var num = 1;
  void recrusiveFunctionWithNoReturnTypeAndNoInputParameters2() {
    print(num);
    num++;
    if (num <= 10) {
      recrusiveFunctionWithNoReturnTypeAndNoInputParameters2();
    }
  }
  recrusiveFunctionWithNoReturnTypeAndNoInputParameters2();

  /// Function Overloading
  /// Function overloading is the ability to define multiple functions with the same name but different parameters.
  /// Function overloading is not supported in Dart.

  /// Function Overriding
  /// Function overriding is the ability to override a function in a child class with the same name and parameters as the parent class.
  /// Function overriding is supported in Dart.

  /// Function Overriding without classes
  /// Function overriding is not possible without classes in Dart.
}

//! void main(List<String> args) => print('Hello World');

///? ========================= E X T R A S ============================= 
//
// void main(List<String> args) {
//   int sum(int a, int b) {
//     int c = a + b; // Function Body
//     return c; // return statement
//   }

//   print(sum(12, 12));

//   printTable(int num) {
//     for (int i = 1; i <= 10; i++) {
//       print("$num * $i = ${num * i}");
//     }
//   }

//   printTable(5); // Calling the function
//   printTable(10); // 10 is passed as an argument/input to the function
// }
