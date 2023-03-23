/// You need to make a program that will ask for a number and will print the factorial of that number.
/// For example, if the number is 5, the program will print 120.
/// If the number is 0, the program will print 1.
/// If the number is negative, the program will print "Invalid number".
/// Note: Use recursion and functions.
/// Sample Output:
/// Enter a number: 5
/// 120

import 'dart:io';

dynamic findFactorial(int number) {
  if (number == 0) {
    return 1;
  } else if (number < 0) {
    return "Invalid number";
  } else {
    return number * findFactorial(number - 1);
  }
}

void main(List<String> args) {
  int number;
  dynamic factorialResult;
  stdout.write("Enter a number: ");
  number = int.parse(stdin.readLineSync()!);
  factorialResult = findFactorial(number);
  print(factorialResult);
}

///* Dry Run
/// 1. User Enters 5
/// 2. number = 5
/// 3. factorialResult = findFactorial(number)
/// 4. findFactorial(5)
/// 5. 5 * findFactorial(4)
/// 6. 5 * 4 * findFactorial(3)
/// 7. 5 * 4 * 3 * findFactorial(2)
/// 8. 5 * 4 * 3 * 2 * findFactorial(1)
/// 9. 5 * 4 * 3 * 2 * 1 * findFactorial(0)
/// 10. 5 * 4 * 3 * 2 * 1 * 1
/// 11. 120