import 'dart:io';

// Person Class
class Person {
  // Fields
  String? name;
  int? age;

  // Constructor
  Person({required this.name, required this.age});
}

// Make a function that inputs List<Person> and returns the person with the highest age
Person? getHighestAge(List<Person> persons) {
  persons.sort((a, b) => a.age!.compareTo(b.age!));
  return persons.last;
}

void main() {
  List<Person> persons = [];
  for (var i = 1; i <= 5; i++) {
    stdout.write("Enter person $i name: ");
    var name = stdin.readLineSync();
    stdout.write("Enter person $i age: ");
    var age = int.parse(stdin.readLineSync()!);
    persons.add(Person(name: name, age: age));
  }
  Person? oldestPerson = getHighestAge(persons);
  print("The oldest person is ${oldestPerson!.name} with age ${oldestPerson.age}");
}
