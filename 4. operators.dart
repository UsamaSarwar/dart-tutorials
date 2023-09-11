/// Operators in Dart
/// 1. Arithmetic Operators
/// 2. Relational Operators
/// 3. Logical Operators
/// 4. Bitwise Operators
/// 5. Assignment Operators
/// 6. Conditional Operators

// ignore_for_file: dead_code

void main(List<String> args) {
  /// Arithmetic Operators
  /// +, -, *, /, %, ++, --

  // Initializing variables
  int a = 10;
  int b = 3;

  // Adding two numbers
  int c = a + b;
  print('a+b = $c'); // a+b = 13
  // print('a+b = ' + c.toString()); // a+b = 13

  // Subtracting two numbers
  c = a - b;
  print('a-b= $c');

  // Multiplying two numbers
  c = a * b;
  print('a*b= $c');

  // Dividing two numbers
  c = a ~/ b;
  print('a~/b= $c');

  // Modulus operator
  c = a % b;
  print('a%b= $c');

  /// Relational Operators
  /// ==, !=, >, <, >=, <=
  
  // Initializing variables
  var x = 10;
  var y = 3;

  // Checking if x is equal to y
  if (x == y) {
    print('x is equal to y');
  } else {
    print('x is not equal to y');
  }

  // Checking if x is not equal to y
  if (x != y) {
    print('x is not equal to y');
  } else {
    print('x is equal to y');
  }

  // Checking if x is greater than y
  if (x > y) {
    print('x is greater than y');
  } else {
    print('x is not greater than y');
  }

  // Checking if x is less than y
  if (x < y) {
    print('x is less than y');
  } else {
    print('x is not less than y');
  }

  // Checking if x is greater than or equal to y
  if (x >= y) {
    print('x is greater than or equal to y');
  } else {
    print('x is neither greater than nor equal to y');
  }

  // Checking if x is less than or equal to y
  if (x <= y) {
    print('x is less than or equal to y');
  } else {
    print('x is neither less than nor equal to y');
  }

  /// Logical Operators
  /// &&, ||, !
  
  // Initializing variables
  bool p = true;
  bool q = false;

  // Checking if p and q are true
  if (p && q) {
    print('p and q are true');
  } else {
    print('p and q are not true');
  }

  // Checking if p or q is true
  if (p || q) {
    print('p or q is true');
  } else {
    print('p or q is not true');
  }

  // Checking if p is not true
  if (!p) {
    print('p is not true');
  } else {
    print('p is true');
  }

  /// Bitwise Operators
  /// &, |, ^, ~, <<, >>
  
  // Initializing variables
  var m = 2; // 10
  var n = 1; // 01

  // Bitwise AND
  var o = m & n;
  print('m & n = $o'); // 00

  // Bitwise OR
  o = m | n;
  print('m | n = $o'); // 11

  // Bitwise XOR
  o = m ^ n;
  print('m ^ n = $o'); // 11

  // Bitwise NOT
  o = ~n;
  print('~n = $o'); // -2

  // Bitwise left shift
  o = m << n;
  print('m << n = $o'); // 100

  // Bitwise right shift
  o = m >> n;
  print('m >> n = $o'); // 1

  /// Assignment Operators
  /// =, +=, -=, *=, /=, %=
  
  // Initializing variables
  var r = 2.0;
  var s = 1.0;

  // Assigning value of s to r
  r = s;
  print('r = $r');

  // Assigning value of r + s to r
  r += s; // r = r + s
  print('r += s = $r');

  // Assigning value of r - s to r
  r -= s; // r = r - s
  print('r -= s = $r');

  // Assigning value of r * s to r
  r *= s; // r = r * s
  print('r *= s = $r');

  // Assigning value of r / s to r
  r /= s; // r = r / s
  print('r /= s = $r');

  // Assigning value of r % s to r
  r %= s; // r = r % s
  print('r %= s = $r');

  /// Conditional Operators
  /// ?:, ??, ??=
  /// ?: is the ternary operator
  /// ?? is the null-aware operator
  /// ??= is the null-aware assignment operator
  
  // Initializing variables
  var t = 2;
  var u = 1;

  // Using conditional operator
  var v = t > u ? t : u; // if t > u is true, then v = t, else v = u
  print('v = $v');
  // Alternative if-else statement
  // if (t > u) {
  //   v = t;
  // } else {
  //   v = u;
  // }

  // Initializing variables
  var w;
  var xx = 1;

  // Using null-aware operator
  var yy = w ?? xx;
  print('yy = $yy');
  // Example
  // var name = null;
  // var fullName = name ?? 'Guest User';


  // Initializing variables
  var z;
  var aa = 1;

  // Using null-aware assignment operator
  z ??= aa;
  print('z = $z');
  // Example
  // var name ??= 'Guest User';  
}