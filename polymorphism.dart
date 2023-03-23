/// Polymorphism in Dart

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

  Dog dog = Dog("Fido");
  dog.makeSound(); // The Fido barks

  Cat cat = Cat("Whiskers");
  cat.makeSound(); // The Whiskers meows

  // polymorphism - animal variable can hold any subclass of Animal
  animal = Dog("Buddy");
  animal.makeSound(); // The Buddy barks

  animal = Cat("Mittens");
  animal.makeSound(); // The Mittens meows
}
