/// Loops in Dart: A Comprehensive Guide
///
/// This file demonstrates the various types of loops available in Dart,
/// along with explanations, examples, and best practices.
///
/// Loop Types:
/// 1. `for` loop: Ideal for iterating a known number of times or when you need the index.
/// 2. `while` loop: Best when the number of iterations is unknown and depends on a condition.
/// 3. `do-while` loop: Similar to `while`, but guarantees at least one execution.
/// 4. `forEach` loop: A concise way to iterate over collections without needing the index.
/// 5. `for-in` loop: Another concise way to iterate over collections, similar to `forEach`.

void main() {
  // Let's break down the components of a loop:
  // 1. Initializer: Sets up the starting value (e.g., i = 0).
  // 2. Condition: Determines if the loop should continue (e.g., i < 10).
  // 3. Increment/Decrement: Modifies the loop variable (e.g., i++, i--).
  // 4. Body: The code executed in each iteration (e.g., print(i)).

  // --------------------------------------------------------------------------
  // 1. for loop
  // --------------------------------------------------------------------------
  print("\n--- for loop ---");
  for (var i = 0; i < 10; i++) {
    print(i);
    // Dry run (for loop with i < 10):
    // i = 0, 0 < 10, print(0) // Output: 0
    // i = 1, 1 < 10, print(1) // Output: 1
    // i = 2, 2 < 10, print(2) // Output: 2
    // ...
    // i = 9, 9 < 10, print(9) // Output: 9
    // i = 10, 10 < 10 // Loop terminates
  }
  // Tip: The `for` loop is highly versatile. You can customize the initializer, condition, and increment/decrement steps.
  // Tip: Use `break` to exit a `for` loop prematurely.
  // Tip: Use `continue` to skip to the next iteration of a `for` loop.
  // Example of break:
  print("\n--- for loop with break ---");
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      break; // Exit the loop when i is 5
    }
    print(i); // Output: 0, 1, 2, 3, 4
  }
  // Example of continue:
  print("\n--- for loop with continue ---");
  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue; // Skip even numbers
    }
    print(i); // Output: 1, 3, 5, 7, 9
  }

  // --------------------------------------------------------------------------
  // 2. while loop
  // --------------------------------------------------------------------------
  print("\n--- while loop ---");
  var i = 0; // Initializer
  while (i < 10) { // Condition
    print(i); // Body
    i++; // Increment
  }
  // Tip: Ensure the condition will eventually be false to avoid infinite loops.
  // Tip: `while` loops are great for situations where you don't know the number of iterations beforehand.
  // Example: Reading from a file until the end is reached.

  // --------------------------------------------------------------------------
  // 3. do-while loop
  // --------------------------------------------------------------------------
  print("\n--- do-while loop ---");
  var j = 0; // Initializer
  do {
    print(j); // Body
    j++; // Increment
  } while (j < 10); // Condition
  // Tip: The body of a `do-while` loop executes at least once, even if the condition is false initially.
  // Tip: Useful when you need to perform an action at least once and then check a condition.
  // Example: Prompting a user for input and then validating it.
  print("\n--- do-while loop example with condition false initially ---");
  var k = 10;
  do {
    print("This will print once: $k");
    k++;
  } while (k < 10);

  // --------------------------------------------------------------------------
  // 4. forEach loop
  // --------------------------------------------------------------------------
  print("\n--- forEach loop ---");
  List<dynamic> list = ["Usama", "Sarwar", 25, true, 23.3, 25];
  list.forEach((element) {
    print(element);
    // Dry run (forEach loop):
    // element = "Usama", print("Usama") // Output: Usama
    // element = "Sarwar", print("Sarwar") // Output: Sarwar
    // element = 25, print(25) // Output: 25
    // element = true, print(true) // Output: true
    // element = 23.3, print(23.3) // Output: 23.3
    // element = 25, print(25) // Output: 25
  });
  // Tip: `forEach` is useful for iterating over collections, but you cannot break out of a `forEach` loop.
  // Tip: `forEach` is a higher-order function that takes a function as an argument.
  // Tip: Use `forEach` when you need to perform an action on each element of a collection.
  // Tip: `forEach` is generally more concise than a `for` loop for simple iterations.

  // --------------------------------------------------------------------------
  // 5. for-in loop
  // --------------------------------------------------------------------------
  print("\n--- for-in loop ---");
  for (dynamic element in list) {
    print(element);
    // Dry run (for-in loop):
    // element = "Usama", print("Usama") // Output: Usama
    // element = "Sarwar", print("Sarwar") // Output: Sarwar
    // element = 25, print(25) // Output: 25
    // element = true, print(true) // Output: true
    // element = 23.3, print(23.3) // Output: 23.3
    // element = 25, print(25) // Output: 25
  }
  // Tip: `for-in` is a concise way to iterate over collections.
  // Tip: Similar to `forEach`, but you can use `break` and `continue` in a `for-in` loop.
  // Tip: Use `for-in` when you need a simple way to iterate over a collection and potentially break or continue.
  print("\n--- for-in loop with break ---");
  for (dynamic element in list) {
    if (element == 25) {
      break;
    }
    print(element); // Output: Usama, Sarwar
  }

  // --------------------------------------------------------------------------
  // for loop vs for-in loop vs forEach loop
  // --------------------------------------------------------------------------
  print("\n--- Same output with for loop (accessing by index) ---");
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
    // Dry run (for loop with index):
    // i = 0, 0 < 6, print(list[0]) // Output: Usama
    // i = 1, 1 < 6, print(list[1]) // Output: Sarwar
    // i = 2, 2 < 6, print(list[2]) // Output: 25
    // i = 3, 3 < 6, print(list[3]) // Output: true
    // i = 4, 4 < 6, print(list[4]) // Output: 23.3
    // i = 5, 5 < 6, print(list[5]) // Output: 25
  }
  // Tip: Use a `for` loop when you need the index of the elements.
  // Tip: `for` loop is more flexible than `for-in` and `forEach` when you need to manipulate the index or iterate in reverse.
  // Tip: `for-in` and `forEach` are more readable and concise when you don't need the index.
  // Tip: `forEach` can't use `break` or `continue`.
}
