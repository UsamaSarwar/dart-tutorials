/// Swapping two numbers without using third variable

main(){
  int a = 10;
  int b = 20;
  print("Before Swapping: a = $a, b = $b");
  a = a + b;
  b = a - b;
  a = a - b;
  print("After Swapping: a = $a, b = $b");

  /// Dart 3 introduced a new way to swap two variables using a single line of code
  int x = 10;
  int y = 20;
  print("Before Swapping: x = $x, y = $y");
  (x,y) = (y,x);
  print("After Swapping: x = $x, y = $y");
}