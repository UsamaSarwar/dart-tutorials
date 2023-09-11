// Using Inheritance in Dart to make a Car class

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
