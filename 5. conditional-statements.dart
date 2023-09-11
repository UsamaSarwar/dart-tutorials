// Conditional statements in Dart

void main() {
  // if-else statement
  int num = 10;
  if (num % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }

  // if-else ladder
  int marks = 75;
  if (marks >= 90) {
    print("A grade");
  } else if (marks >= 80) {
    print("B grade");
  } else if (marks >= 70) {
    print("C grade");
  } else if (marks >= 60) {
    print("D grade");
  } else if (marks >= 40) {
    print("E grade");
  } else {
    print("Fail");
  }

  // switch case
  String grade = "A";
  switch (grade) {
    case "A":
      print("Excellent");
      break;
    case "B":
      print("Good");
      break;
    case "C":
      print("Fair");
      break;
    case "D":
      print("Poor");
      break;
    case "E":
      print("Fail");
      break;
    default:
      print("Invalid grade");
  }
}