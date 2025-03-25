/// Operators in Dart
///
/// This file demonstrates various operators available in Dart, including:
///   1. Arithmetic Operators
///   2. Relational Operators
///   3. Logical Operators
///   4. Bitwise Operators
///   5. Assignment Operators
///   6. Conditional Operators
///   7. Type Test Operators
///   8. Cascade Notation
///
/// Each operator type is explained with examples and clear documentation.

// ignore_for_file: dead_code, unnecessary_type_check

void main(List<String> args) {
  // --------------------------------------------------------------------------
  // 1. Arithmetic Operators
  // --------------------------------------------------------------------------

  /// **Arithmetic Operators:**
  ///
  /// These operators are used to perform mathematical calculations.
  ///   - `+`: Addition
  ///   - `-`: Subtraction
  ///   - `*`: Multiplication
  ///   - `/`: Division (returns a double)
  ///   - `~/`: Integer Division (returns an int, discarding the remainder)
  ///   - `%`: Modulo (returns the remainder of a division)
  ///   - `++`: Increment (increases the value by 1)
  ///   - `--`: Decrement (decreases the value by 1)

  print("\n--- Arithmetic Operators ---");

  // Initializing variables
  int a = 10;
  int b = 3;

  // Addition
  int c = a + b;
  print('a + b = $c'); // Output: a + b = 13

  // Subtraction
  c = a - b;
  print('a - b = $c'); // Output: a - b = 7

  // Multiplication
  c = a * b;
  print('a * b = $c'); // Output: a * b = 30

  // Division (returns a double)
  double d = a / b;
  print('a / b = $d'); // Output: a / b = 3.3333333333333335

  // Integer Division (returns an int)
  c = a ~/ b;
  print('a ~/ b = $c'); // Output: a ~/ b = 3

  // Modulo
  c = a % b;
  print('a % b = $c'); // Output: a % b = 1

  // Increment (pre-increment)
  int e = ++a; // First increment a by 1, then assign to e
  print('++a = $e'); // Output: ++a = 11
  print('a = $a'); // Output: a = 11

  // Decrement (post-decrement)
  int f = b--; // First assign b to f, then decrement b by 1
  print('b-- = $f'); // Output: b-- = 3
  print('b = $b'); // Output: b = 2

  // --------------------------------------------------------------------------
  // 2. Relational Operators
  // --------------------------------------------------------------------------

  /// **Relational Operators:**
  ///
  /// These operators are used to compare two values.
  ///   - `==`: Equal to
  ///   - `!=`: Not equal to
  ///   - `>`: Greater than
  ///   - `<`: Less than
  ///   - `>=`: Greater than or equal to
  ///   - `<=`: Less than or equal to

  print("\n--- Relational Operators ---");

  // Initializing variables
  var x = 10;
  var y = 3;

  // Equal to
  if (x == y) {
    print('x is equal to y');
  } else {
    print('x is not equal to y'); // Output: x is not equal to y
  }

  // Not equal to
  if (x != y) {
    print('x is not equal to y'); // Output: x is not equal to y
  } else {
    print('x is equal to y');
  }

  // Greater than
  if (x > y) {
    print('x is greater than y'); // Output: x is greater than y
  } else {
    print('x is not greater than y');
  }

  // Less than
  if (x < y) {
    print('x is less than y');
  } else {
    print('x is not less than y'); // Output: x is not less than y
  }

  // Greater than or equal to
  if (x >= y) {
    print('x is greater than or equal to y'); // Output: x is greater than or equal to y
  } else {
    print('x is neither greater than nor equal to y');
  }

  // Less than or equal to
  if (x <= y) {
    print('x is less than or equal to y');
  } else {
    print('x is neither less than nor equal to y'); // Output: x is neither less than nor equal to y
  }

  // --------------------------------------------------------------------------
  // 3. Logical Operators
  // --------------------------------------------------------------------------

  /// **Logical Operators:**
  ///
  /// These operators are used to combine or modify boolean expressions.
  ///   - `&&`: Logical AND (true if both operands are true)
  ///   - `||`: Logical OR (true if at least one operand is true)
  ///   - `!`: Logical NOT (inverts the boolean value)

  print("\n--- Logical Operators ---");

  // Initializing variables
  bool p = true;
  bool q = false;

  // Logical AND
  if (p && q) {
    print('p and q are true');
  } else {
    print('p and q are not true'); // Output: p and q are not true
  }

  // Logical OR
  if (p || q) {
    print('p or q is true'); // Output: p or q is true
  } else {
    print('p or q is not true');
  }

  // Logical NOT
  if (!p) {
    print('p is not true');
  } else {
    print('p is true'); // Output: p is true
  }

  // --------------------------------------------------------------------------
  // 4. Bitwise Operators
  // --------------------------------------------------------------------------

  /// **Bitwise Operators:**
  ///
  /// These operators perform operations on individual bits of numbers.
  ///   - `&`: Bitwise AND
  ///   - `|`: Bitwise OR
  ///   - `^`: Bitwise XOR (exclusive OR)
  ///   - `~`: Bitwise NOT (inverts all bits)
  ///   - `<<`: Bitwise Left Shift (shifts bits to the left)
  ///   - `>>`: Bitwise Right Shift (shifts bits to the right)

  print("\n--- Bitwise Operators ---");

  // Initializing variables
  var m = 2; // Binary: 10
  var n = 1; // Binary: 01

  // Bitwise AND
  var o = m & n; // 10 & 01 = 00 (0 in decimal)
  print('m & n = $o'); // Output: m & n = 0

  // Bitwise OR
  o = m | n; // 10 | 01 = 11 (3 in decimal)
  print('m | n = $o'); // Output: m | n = 3

  // Bitwise XOR
  o = m ^ n; // 10 ^ 01 = 11 (3 in decimal)
  print('m ^ n = $o'); // Output: m ^ n = 3

  // Bitwise NOT
  o = ~n; // ~01 = 10 (in two's complement, -2 in decimal)
  print('~n = $o'); // Output: ~n = -2

  // Bitwise Left Shift
  o = m << n; // 10 << 1 = 100 (4 in decimal)
  print('m << n = $o'); // Output: m << n = 4

  // Bitwise Right Shift
  o = m >> n; // 10 >> 1 = 1 (1 in decimal)
  print('m >> n = $o'); // Output: m >> n = 1

  // --------------------------------------------------------------------------
  // 5. Assignment Operators
  // --------------------------------------------------------------------------

  /// **Assignment Operators:**
  ///
  /// These operators are used to assign values to variables.
  ///   - `=`: Assign
  ///   - `+=`: Add and assign
  ///   - `-=`: Subtract and assign
  ///   - `*=`: Multiply and assign
  ///   - `/=`: Divide and assign
  ///   - `~/=`: Integer divide and assign
  ///   - `%=`: Modulo and assign

  print("\n--- Assignment Operators ---");

  // Initializing variables
  var r = 2.0;
  var s = 1.0;

  // Assign
  r = s;
  print('r = $r'); // Output: r = 1.0

  // Add and assign
  r += s; // r = r + s
  print('r += s = $r'); // Output: r += s = 2.0

  // Subtract and assign
  r -= s; // r = r - s
  print('r -= s = $r'); // Output: r -= s = 1.0

  // Multiply and assign
  r *= s; // r = r * s
  print('r *= s = $r'); // Output: r *= s = 1.0

  // Divide and assign
  r /= s; // r = r / s
  print('r /= s = $r'); // Output: r /= s = 1.0

  // Integer divide and assign
  r = 5.0;
  r = (r ~/ s).toDouble(); // r = r ~/ s
  print('r ~/= s = $r'); // Output: r ~/= s = 5.0

  // Modulo and assign
  r = 5.0;
  s = 2.0;
  r %= s; // r = r % s
  print('r %= s = $r'); // Output: r %= s = 1.0

  // --------------------------------------------------------------------------
  // 6. Conditional Operators
  // --------------------------------------------------------------------------

  /// **Conditional Operators:**
  ///
  /// These operators are used to make decisions based on conditions.
  ///   - `?:`: Ternary operator (shorthand for if-else)
  ///   - `??`: Null-aware operator (returns the right operand if the left is null)
  ///   - `??=`: Null-aware assignment operator (assigns the right operand if the left is null)

  print("\n--- Conditional Operators ---");

  // Initializing variables
  var t = 2;
  var u = 1;

  // Ternary operator
  var v = t > u ? t : u; // if t > u is true, then v = t, else v = u
  print('v = $v'); // Output: v = 2

  // Null-aware operator
  var w;
  var xx = 1;
  var yy = w ?? xx; // If w is null, assign xx to yy, otherwise assign w to yy
  print('yy = $yy'); // Output: yy = 1

  // Null-aware assignment operator
  var z;
  var aa = 1;
  z ??= aa; // If z is null, assign aa to z
  print('z = $z'); // Output: z = 1

  var name = null;
  var fullName = name ?? 'Guest User';
  print('fullName = $fullName'); // Output: fullName = Guest User

  var name2;
  name2 ??= 'Guest User';
  print('name2 = $name2'); // Output: name2 = Guest User

  // --------------------------------------------------------------------------
  // 7. Type Test Operators
  // --------------------------------------------------------------------------

  /// **Type Test Operators:**
  ///
  /// These operators are used to check the type of an object at runtime.
  ///   - `as`: Typecast (used to change the type of an object)
  ///   - `is`: True if the object has the specified type
  ///   - `is!`: True if the object does not have the specified type

  print("\n--- Type Test Operators ---");

  // Initializing variables
  var myVariable = "Hello";

  // is
  print(myVariable is String); // Output: true
  print(myVariable is int); // Output: false

  // is!
  print(myVariable is! String); // Output: false
  print(myVariable is! int); // Output: true

  // as
  var myNumber = 10;
  var myString = myNumber.toString();
  print(myString is String); // Output: true

  // --------------------------------------------------------------------------
  // 8. Cascade Notation
  // --------------------------------------------------------------------------

  /// **Cascade Notation:**
  ///
  /// Cascade notation (`..`) allows you to perform multiple operations on the same object.
  /// It's a shorthand way to avoid repeating the object's name multiple times.

  print("\n--- Cascade Notation ---");

  // Without cascade notation
  StringBuffer sb = StringBuffer();
  sb.write('Hello');
  sb.write(' ');
  sb.write('World');
  print(sb.toString()); // Output: Hello World

  // With cascade notation
  StringBuffer sb2 = StringBuffer()
    ..write('Hello')
    ..write(' ')
    ..write('World');
  print(sb2.toString()); // Output: Hello World
}
