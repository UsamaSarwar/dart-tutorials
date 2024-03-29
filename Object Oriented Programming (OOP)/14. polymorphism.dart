/// Polymorphism in Dart
/// Polymorphism is the ability of an object to take on many forms. The most common use of polymorphism in OOP occurs when a parent class reference is used to refer to a child class object.

// superclass
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print("The $name makes a sound");
  }
}

// subclass
class Dog extends Animal {
  Dog(String name) : super(name);

  void makeSound() {
    print("The $name barks");
  }
}

// subclass
class Cat extends Animal {
  Cat(String name) : super(name);

  void makeSound() {
    print("The $name meows");
  }
}

void main() {
  Animal animal = Animal("generic animal");
  animal.makeSound(); // The generic animal makes a sound

  Dog dog = Dog("Doggy");
  dog.makeSound(); // The Doggy barks

  Cat cat = Cat("Tom");
  cat.makeSound(); // The Tom meows

  // polymorphism - animal variable can hold any subclass of Animal
  animal = Dog("Buddy");
  animal.makeSound(); // The Buddy barks

  animal = Cat("Cato");
  animal.makeSound(); // The Cato meows
}
