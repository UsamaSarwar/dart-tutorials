/// Prompt user to enter a number and print its table
import 'dart:io'; // to use stdin and stdout

main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print("$number x $i = ${number * i}");
  }
}

// Dry run
// Enter a number: 2
// First Iteration: i=1, number=2, print(2 x 1 = 2) // Output: 2 x 1 = 2
// Second Iteration: i=2, number=2, print(2 x 2 = 4) // Output: 2 x 2 = 4
// Third Iteration: i=3, number=2, print(2 x 3 = 6) // Output: 2 x 3 = 6
// Fourth Iteration: i=4, number=2, print(2 x 4 = 8) // Output: 2 x 4 = 8
// Fifth Iteration: i=5, number=2, print(2 x 5 = 10) // Output: 2 x 5 = 10
// Sixth Iteration: i=6, number=2, print(2 x 6 = 12) // Output: 2 x 6 = 12
// Seventh Iteration: i=7, number=2, print(2 x 7 = 14) // Output: 2 x 7 = 14
// Eighth Iteration: i=8, number=2, print(2 x 8 = 16) // Output: 2 x 8 = 16
// Ninth Iteration: i=9, number=2, print(2 x 9 = 18) // Output: 2 x 9 = 18
// Tenth Iteration: i=10, number=2, print(2 x 10 = 20) // Output: 2 x 10 = 20
