import 'dart:io';

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
  // Fields (Properties)
  String? name;
  int? age;
  String? gender;

  // Constructors
  // Person(this.name, this.age, this.gender); // Unnamed Constructor
  Person({required this.name, required this.age, required this.gender}); // Named Constructor

  // Getters and Setters
  String get getName => this.name!;
  set setName(String name) => this.name = name;

  // Methods
  void walk() => print("$name is Walking");
  void talk() => print("$name is Talking");
  void showData() => print('Name: $name\nAge: $age\nGender: $gender');
}
// Custom Data Type

void main(List<String> args) {
  // String name = "Usama";
  // String age = "20";
  // String gender = "Male";

  // Person _person = Person('Usama', 27, 'Male'); // Unnamed Constructor
  Person _person = Person(name: 'Usama', age: 27, gender: 'Male'); // Named Constructor
  print('Name: ' + _person.getName); // Name: Usama
  print('Age: ${_person.age}'); // Age: 27
  print('Gender: ' + _person.gender!); // Gender: Male
  _person.walk(); // Usama is Walking
  _person.setName = "Sarwar";
  _person.talk(); // Sarwar is Talking

  Person person2 = Person(name: 'Talha', age: 20, gender: 'Male');
  print('Name: ' + person2.getName); // Name: Talha

  stdout.write('Name: ');
  String? my_name = stdin.readLineSync();

  stdout.write('Age: ');
  int? my_age = int.parse(stdin.readLineSync()!);

  stdout.write('Gender: ');
  String? my_gender = stdin.readLineSync();

  Person usamasarwar = Person(name: my_name, age: my_age, gender: my_gender);
  usamasarwar.showData();
}
