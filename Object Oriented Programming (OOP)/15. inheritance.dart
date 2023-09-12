/// Inheritance in Dart
/// Inheritance in Dart is the process of creating a new class from an existing class. The new class is called the derived (or child) class and the existing class is called the base (or parent) class. The derived class inherits all the features from the base class and can have additional features of its own. Inheritance is one of the most important features of Object-Oriented Programming (OOP). It allows us to reuse the code without rewriting it. Inheritance is also known as generalization or specialization.

class A {
  // Parent class
  int a = 1;
  void printA() {
    print('A.a = $a');
  }
}

class B extends A {
  // Child class
  int b = 2;
  void printB() {
    print('B.b = $b');
  }
}

class C extends B {
  // Child class
  int c = 3;
  void printC() {
    print('C.c = $c');
  }
}

void main() {
  C c = C(); // var c = C();
  c.printA();
  c.printB();
  c.printC();
}
