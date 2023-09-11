/// Inheritance in Dart

class A {
  int a = 1;
  void printA() {
    print('A.a = $a');
  }
}

class B extends A {
  int b = 2;
  void printB() {
    print('B.b = $b');
  }
}

class C extends B {
  int c = 3;
  void printC() {
    print('C.c = $c');
  }
}

void main() {
  // var c = C();
  C c = C();
  c.printA();
  c.printB();
  c.printC();
}
