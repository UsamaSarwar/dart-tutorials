// Using Inheritance in Dart to make a Car class
// Inheritance in Dart is the process of creating a new class from an existing class. The new class is called the derived (or child) class and the existing class is called the base (or parent) class. The derived class inherits all the features from the base class and can have additional features of its own. Inheritance is one of the most important features of Object-Oriented Programming (OOP). It allows us to reuse the code without rewriting it. Inheritance is also known as generalization or specialization.
class Vehicle {
  void printVehicle() {
    print('This is a Vehicle.');
  }
}

class Car extends Vehicle {
  int wheels = 4;

  void printCar() {
    print('Car has $wheels doors');
  }
}

class Honda extends Car {
  String model = 'Honda City';

  void printHonda() {
    print('Honda model is $model');
  }
}

class Truck extends Vehicle {
  int wheels = 6;
  void printTruck() {
    print('Truck has $wheels doors');
  }
}

class Cycle extends Vehicle {
  int wheels = 2;
  void printCycle() {
    print('Cycle has $wheels doors');
  }
}
