/// Loops in Dart
/// 1. for loop
/// 2. while loop
/// 3. do-while loop
/// 4. forEach loop
/// 5. for-in loop

void main() {
  // Let say we have these things
  // 1. Initializer (i = 0)
  // 2. Condition (i < 10)
  // 3. Increment (i++) / Decrement (i--)
  // 4. Body (print(i))

  // for loop
  for (var i = 0; i < 10; i++) {
    print(i);
    // Dry run
    // i = 0, 0 < 10, print(0) // Output: 0
    // i = 1, 1 < 10, print(1) // Output: 1
    // i = 2, 2 < 10, print(2) // Output: 2
    // i = 3, 3 < 10, print(3) // Output: 3
    // i = 4, 4 < 10, print(4) // Output: 4
    // i = 5, 5 < 10, print(5) // Output: 5
    // i = 6, 6 < 10, print(6) // Output: 6
    // i = 7, 7 < 10, print(7) // Output: 7
    // i = 8, 8 < 10, print(8) // Output: 8
    // i = 9, 9 < 10, print(9) // Output: 9
    // i = 10, 10 < 10 // Output: Terminate
  }

  // while loop
  var i = 0; // Initializer
  while (i < 10) { // Condition
    print(i); // Body
    i++; // Increment
  }

  // do-while loop
  var j = 0; // Initializer
  do {
    print(j); // Body
    j++; // Increment
  } while (j < 10); // Condition

  // forEach loop
  List<dynamic> list = ["Usama", "Sarwar", 25, true, 23.3, 25];
  list.forEach((element) {
    print(element);
    // Dry run
    // element = "Usama", print("Usama") // Output: Usama
    // element = "Sarwar", print("Sarwar") // Output: Sarwar
    // element = 25, print(25) // Output: 25
    // element = true, print(true) // Output: true
    // element = 23.3, print(23.3) // Output: 23.3
    // element = 25, print(25) // Output: 25
  });

  // for-in loop
  for (dynamic element in list) {
    print(element);
    // Dry run
    // element = "Usama", print("Usama") // Output: Usama
    // element = "Sarwar", print("Sarwar") // Output: Sarwar
    // element = 25, print(25) // Output: 25
    // element = true, print(true) // Output: true
    // element = 23.3, print(23.3) // Output: 23.3
    // element = 25, print(25) // Output: 25
  }

  //* Same output with for loop
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
    // Dry run
    // i = 0, 0 < 6, print(list[0]) // Output: Usama
    // i = 1, 1 < 6, print(list[1]) // Output: Sarwar
    // i = 2, 2 < 6, print(list[2]) // Output: 25
    // i = 3, 3 < 6, print(list[3]) // Output: true
    // i = 4, 4 < 6, print(list[4]) // Output: 23.3
    // i = 5, 5 < 6, print(list[5]) // Output: 25
  }

}