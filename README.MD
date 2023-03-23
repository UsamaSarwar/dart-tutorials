# Assignments

## Assignment 1

You need to make a recursive login system that will ask for a username and password. If the username and password are correct, the program will print "Welcome to the system" and will end. If the username and password are incorrect, the program will ask for the username and password again. The program will ask for the username and password 3 times. If the username and password are incorrect 3 times, the program will print "Access denied" and will end. The username and password are "admin" and "1234" respectively.

### Sample Output

```bash
Enter username: admin
Enter password: 4321
Access denied

Enter username: admin
Enter password: 1234
Welcome to the system
```

## Assignment 2

You need to make a program that will ask for a number and will print the factorial of that number. For example, if the number is 5, the program will print 120. If the number is 0, the program will print 1. If the number is negative, the program will print "Invalid number". The program will ask for a number 3 times. If the number is invalid 3 times, the program will print "Invalid number" and will end. <br>
_Note: Use recursion and functions._

### Factorial

Factorial is a mathematical operation that multiplies a number by all the numbers below it. For example, 5 factorial is 5 _ 4 _ 3 _ 2 _ 1 = 120. 0 factorial is 1. Negative numbers don't have a factorial.

### Sample Output

```bash
Enter a number: 5
120
```

## Assignment 3

Concepts: Use Exception Handling and Asynchronous Programming for Input Validation of an email address.
You need to make a program that will ask for an email address and will print "Valid email address" if the email address is valid and will print "Invalid email address" if the email address is invalid. The program will ask for an email address 3 times. If the email address is invalid 3 times, the program will print "Invalid email address" and will end. <br>
_Note: Use exception handling and asynchronous programming._

### Valid Email Address

Regex for valid email address:

```
^[a-zA-Z0-9.]+@[a-zA-Z0-9]*+\.[a-zA-Z0-9]*$
```

### Sample Output

```bash
Enter email address: abccompany.com
Invalid email address

Enter email address: abc@company.com
Valid email address
```

## Assignment 4

Write program that asks student for total marks and marks obtained in 5 subjects.
Calculate the percentage and grade according to the following table:
| Percentage | Grade |
|------------|-------|
| 90-100 | A |
| 80-89 | B |
| 70-79 | C |
| 60-69 | D |
| 50-59 | E |
| 0-49 | F |

### Sample Output

```bash
Enter total marks: 500
Enter marks obtained in subject 1: 87
Enter marks obtained in subject 2: 45
Enter marks obtained in subject 3: 65
Enter marks obtained in subject 4: 76
Enter marks obtained in subject 5: 87

Grade Subject 1: 87 (B)
Grade Subject 2: 45 (F)
Grade Subject 3: 65 (D)
Grade Subject 4: 76 (C)
Grade Subject 5: 87 (B)

Overall Percentage: 72.0
Overall Grade: C
```

## Assignment 5

Write a program that will ask for a number and will print the Fibonacci sequence of that number. For example, if the number is 5, the program will print 0, 1, 1, 2, 3. If the number is 0, the program will print 0. If the number is negative, the program will print "Invalid number". The program will ask for a number 3 times. If the number is invalid 3 times, the program will print "Invalid number" and will end. <br>
_Note: Use recursion and functions._

### Fibonacci Sequence
The Fibonacci sequence is a sequence of numbers where the next number is the sum of the previous two numbers. For example, 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987 and so on...

### Sample Output

```bash
Enter a number: 5
0, 1, 1, 2, 3
```