/// Classes in Dart
/// Classes can be declared using the class keyword.
/// Classes can have fields, getters, setters, methods, and constructors.
/// Classes can also be abstract.
/// Classes can extend other classes and implement interfaces.

/// Syntax of a class
/// class <name> {
///   Fields
///   Getters and Setters
///   Constructors
///   Methods
/// }

/// Example of a class
class Person {
  // Fields
  String? name;
  int? age;
  String? gender;

  // Constructors
  // person(this.name, this.age, this.gender); // Unnamed Constructor
  Person(
      {required this.name,
      required this.age,
      required this.gender}); // Named Constructor

  // Getters and Setters
  String get getName => this.name!;
  set setName(String name) => this.name = name;

  // Methods
  void walk() => print("$name is Walking");
  void talk() => print("$name is Talking");
}
// Custom Data Type

void main(List<String> args) {
  // String name = "Usama";
  // String age = "20";
  // String gender = "Male";

  // person _person = person('Usama', 27, 'Male'); // Unnamed Constructor
  Person _person =
      Person(name: 'Usama', age: 27, gender: 'Male'); // Named Constructor
  print('Name: ' + _person.getName);
  print('Age: ${_person.age}');
  print('Gender: ' + _person.gender!);
  _person.walk();
  _person.setName = "Sarwar";
  _person.talk();
}
