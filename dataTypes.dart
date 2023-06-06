void main() {
  /// Primitive Data Types
  String _string = "Usama Sarwar";
  print(_string); //? Usama Sarwar

  int _integer = 25;
  print(_integer); //? 25

  double _double = 5.8;
  print(_double); //? 5.8
  
  bool _bool = true;
  print(_bool); //? true

  /// Non-Primitive Data Types
  List<String> list_string = ["Usama", "Sarwar"]; // List of Strings
  print(list_string); //? [Usama, Sarwar]
  print(list_string[0]); //? Usama
  print(list_string[1]); //? Sarwar

  List list = ["Usama", "Sarwar", 25, true, 23.3, 25]; // List of dynamic data types
  print(list); //? [Usama, Sarwar, 25, true, 23.3, 25]

  Map<String, String> _map = {"firstName": "Usama", "lastName": "Sarwar"};
  print(_map); //? {firstName: Usama, lastName: Sarwar}
  print(_map["firstName"]); //? Usama
  print(_map["lastName"]); //? Sarwar

  Set<String> _set = {"Pakistan", "India", "China"}; // Set of Strings (No Duplicates)
  print(_set); //? {Pakistan, India, China}

  /// Dynamic Data Type
  dynamic _dynamic = "Usama"; // dynamic is a dynamic data type and its datatype can be changed
  print(_dynamic); //? Usama
  _dynamic = 25;
  print(_dynamic); //? 25
  var _var = "Sarwar"; // var is a dynamic data type and now it is a String
  print(_var); //? Sarwar
  //! _var = 25; // var is a var data type and now it can not be an Integer

  //* Example
  var age = 25;
  print(age); // 25
  //! age = "26";
  print(age); // 26
}

/// Data Types in Dart
/// Primitive Data Types
/// 1. String
/// 2. Integer
/// 3. Double
/// 4. Boolean
/// Non-Primitive Data Types
/// 1. List
/// 2. Map
/// 3. Set
/// Dynamic Data Type
/// 1. dynamic
/// 2. var

/// Variables in Dart
/// Rules for naming variables
/// 1. Variable name can only contain letters, numbers, and underscores. i.e. student_1
/// 2. Variable name must start with a letter or an underscore. i.e. _student_1
/// 3. Variable name cannot start with a number. //! i.e. 1_student
/// 4. Variable name cannot contain spaces. //! i.e. student 1
/// 5. Variable name cannot be a keyword. //! i.e. print
/// 6. Variable name cannot be a reserved word. //! i.e. abstract
/// 7. Variable name cannot be a built-in identifier. //! i.e. as
/// 8. Variable name cannot be a built-in type. //! i.e. int
/// 9. Variable name cannot be a built-in function. //! i.e. print
/// 10. Variable name cannot be a built-in constant.  //! i.e. true