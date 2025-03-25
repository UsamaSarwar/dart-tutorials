/*
Ternary Operator in Dart

The ternary operator is a concise way to write conditional expressions, similar to an if-else statement, but in a single line. It's particularly useful for simple conditions where you want to assign a value based on a boolean expression. It enhances code readability and reduces verbosity for straightforward conditional logic.

Syntax:

condition ? exprIfTrue : exprIfFalse;

- condition: A boolean expression that evaluates to either true or false.
- exprIfTrue: The expression to be evaluated and returned if the condition is true.
- exprIfFalse: The expression to be evaluated and returned if the condition is false.

Ternary Operator vs. If-Else:

The ternary operator is a shorthand for a simple if-else statement. It makes the code more compact and readable in certain situations.

Example 1: Finding the Maximum of Two Numbers

Using if-else:
*/

// ignore_for_file: dead_code ,dead_null_aware_expression

void main() {
  int num1 = 10;
  int num2 = 15;
  int max = 0;

  if (num1 > num2) {
    max = num1;
  } else {
    max = num2;
  }

  print("The greatest number is $max"); // Output: The greatest number is 15
}

/*
Using ternary operator:
*/

void mainTernary() {
  int num1 = 10;
  int num2 = 15;
  int max = (num1 > num2) ? num1 : num2;

  print("The greatest number is $max"); // Output: The greatest number is 15
}

/*
Example 2: Conditional String Assignment

Assigning a string based on a selection value.
*/

void mainStringAssignment() {
  var selection = 2;
  var output = (selection == 2) ? 'Apple' : 'Banana';

  print(output); // Output: Apple
}

/*
Example 3: Checking Voter Eligibility

Determining if a person is eligible to vote based on their age.
*/

void mainVoterEligibility() {
  var age = 18;
  var check = (age >= 18) ? 'You are a voter.' : 'You are not a voter.';

  print(check); // Output: You are a voter.
}

/*
Example 4: Determining Even or Odd

Check if a number is even or odd.
*/
void mainEvenOdd() {
  int number = 7;
  String result = (number % 2 == 0) ? "Even" : "Odd";
  print("$number is $result"); // Output: 7 is Odd
}

/*
Example 5: Assigning a Grade

Assign a grade based on a score.
*/
void mainGradeAssignment() {
  int score = 85;
  String grade =
      (score >= 90)
          ? "A"
          : (score >= 80)
          ? "B"
          : (score >= 70)
          ? "C"
          : (score >= 60)
          ? "D"
          : "F";
  print("Grade: $grade"); // Output: Grade: B
}

/*
Example 6: Checking for Positive or Negative

Determine if a number is positive or negative.
*/
void mainPositiveNegative() {
  int number = -5;
  String type =
      (number > 0)
          ? "Positive"
          : (number < 0)
          ? "Negative"
          : "Zero";
  print("$number is $type"); // Output: -5 is Negative
}

/*
Example 7: Checking if a List is Empty

Determine if a list is empty or not.
*/
void mainListEmpty() {
  List<int> numbers = [];
  String message = numbers.isEmpty ? "List is empty" : "List is not empty";
  print(message); // Output: List is empty
}

/*
Example 8: Checking User Role

Determine if a user is an admin or a regular user.
*/
void mainUserRole() {
  String userRole = "admin";
  String message = (userRole == "admin") ? "Admin User" : "Regular User";
  print(message); // Output: Admin User
}

/*
Example 9: Checking Login Status

Determine if a user is logged in or not.
*/
void mainLoginStatus() {
  bool isLoggedIn = true;
  String message = isLoggedIn ? "Logged In" : "Logged Out";
  print(message); // Output: Logged In
}

/*
Example 10: Setting Default Value

Set a default value if a variable is null.
*/
void mainDefaultValue() {
  String? userName; // userName is null
  String name = userName ?? "Guest"; // If userName is null, assign "Guest"
  print("User Name: $name"); // Output: User Name: Guest

  String? userName2 = "Usama";
  String name2 = userName2 ?? "Guest";
  print("User Name: $name2"); // Output: User Name: Usama
}

/*
Use Cases and Considerations:

1. Simple Assignments:
   - The ternary operator is ideal for assigning values based on simple boolean conditions.
   - Example: var status = (isLoggedIn) ? 'Online' : 'Offline';

2. Conditional Return Values:
   - It can be used within functions to return different values based on a condition.
   - Example: String getStatus(bool isLoggedIn) => (isLoggedIn) ? 'Online' : 'Offline';

3. Widget Building in Flutter:
   - Flutter uses the ternary operator extensively for conditionally rendering widgets.
   - Example: child: (isLoading) ? CircularProgressIndicator() : Text('Data Loaded');

4. Null-Aware Ternary (??):
   - Dart's null-aware operators can be combined with the ternary operator for concise null handling.
   - Example: var name = person?.name ?? 'Guest'; //If person name is null, guest will be assigned.
   - Example: var value = mayBeNull == null ? "default" : mayBeNull;

5. Nested Ternary Operators:
   - Ternary operators can be nested to handle multiple conditions.
   - Example: String result = (score > 90) ? "A" : (score > 80) ? "B" : "C";

Exceptions and Limitations:

1. Readability:
   - While concise, nested ternary operators can become difficult to read and understand.
   - It's generally recommended to avoid deeply nested ternary expressions for the sake of code clarity.
   - If the logic is complicated, if-else statements are preferable.

2. Type Safety:
   - Both expressions (exprIfTrue and exprIfFalse) must have compatible types.
   - If the types are incompatible, you'll encounter a compile-time error.

3. Side Effects:
   - Avoid using ternary operators with expressions that have side effects (e.g., modifying variables or performing I/O).
   - Ternary operators are intended for expressions that return values, not for statements that perform actions.

Challenge:

Create an int variable age and initialize it with your age. Write a ternary statement to print “Teenager” if age is between 13 and 19 and “Not Teenager” if age is not between 13 and 19.
*/

void mainTeenagerChallenge() {
  int age = 16;
  print((age >= 13 && age <= 19) ? "Teenager" : "Not Teenager");
}
