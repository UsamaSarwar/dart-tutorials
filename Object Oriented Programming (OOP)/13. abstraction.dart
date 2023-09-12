/// Abstraction in Dart
/// Abstraction is the process of hiding the implementation details of a class or object, and exposing only the necessary and safe methods and properties. This can be achieved through the use of abstract classes and interfaces. Here's an example code that demonstrates abstraction in Dart:

// Abstract class
abstract class Animal {
  // Abstract method (does not have a body)
  void makeSound();

  // Regular method
  void eat() {
    print('I eat food.');
  }
}

// Animal is a parent class
// Cat class extends Animal class
class Cat extends Animal {
  // extends Animal is Inheritence Concept
  // Overriding abstract method
  void makeSound() {
    print('Meow');
  }
}

// Dog class extends Animal class
class Dog extends Animal {
  // Overriding abstract method
  void makeSound() {
    print('Bark');
  }
}

void main() {
  var cat = Cat(); // Create a Cat object
  var dog = Dog(); // Create a Dog object

  cat.makeSound(); // Meow
  dog.makeSound(); // Bark

  cat.eat(); // I eat food.
  dog.eat(); // I eat food.
}
