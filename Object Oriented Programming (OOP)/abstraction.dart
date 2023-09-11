/// Abstraction in Dart

// Abstract class
abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  void makeSound() {
    print("Meow!");
  }
}

void main() {
  Animal dog = new Dog();
  Animal cat = new Cat();
  
  dog.makeSound(); // Output: Woof!
  cat.makeSound(); // Output: Meow!
}