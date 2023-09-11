class Animal {
  String name;
  int age;

  /// Animal is the base class for all animals.
  Animal(this.name, this.age);

  void makeSound() {
    print('The animal makes a sound');
  }
}

class Cat extends Animal {
  String color;

  Cat(String name, int age, this.color) : super(name, age);

  void purr() {
    print('The cat purrs');
  }

  // Polymorphism - override the makeSound() method
  @override
  void makeSound() {
    print('The cat meows');
  }
}

void main() {
  var animal = Animal('Unknown', 5);
  animal.makeSound();

  var cat = Cat('Kitty', 2, 'brown');
  cat.makeSound();
  cat.purr();
}
