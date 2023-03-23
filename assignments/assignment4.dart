/// Assignment 4
/// Write program that asks student for total marks and marks obtained in 5 subjects
/// Calculate the percentage and grade according to the following table:
/// | Percentage | Grade |
/// |------------|-------|
/// | 90-100     | A     |
/// | 80-89      | B     |
/// | 70-79      | C     |
/// | 60-69      | D     |
/// | 50-59      | E     |
/// | 0-49       | F     |
///
/// Sample Output:
///
/// Enter total marks: 500
/// Enter marks obtained in subject 1: 87
/// Enter marks obtained in subject 2: 45
/// Enter marks obtained in subject 3: 65
/// Enter marks obtained in subject 4: 76
/// Enter marks obtained in subject 5: 87

/// Grade Subject 1: 87 (B)
/// Grade Subject 2: 45 (F)
/// Grade Subject 3: 65 (D)
/// Grade Subject 4: 76 (C)
/// Grade Subject 5: 87 (B)

/// Overall Percentage: 72.0
/// Overall Grade: C

import 'dart:io';

void main() {
  const int totalSubjectMarks = 100;
  int totalMarks;
  int subject1;
  int subject2;
  int subject3;
  int subject4;
  int subject5;
  double percentage;
  double percentageSubject1;
  double percentageSubject2;
  double percentageSubject3;
  double percentageSubject4;
  double percentageSubject5;
  String grade;
  String gradeSubject1;
  String gradeSubject2;
  String gradeSubject3;
  String gradeSubject4;
  String gradeSubject5;


  stdout.write("Enter total marks: ");
  totalMarks = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks obtained in subject 1: ");
  subject1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks obtained in subject 2: ");
  subject2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks obtained in subject 3: ");
  subject3 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks obtained in subject 4: ");
  subject4 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter marks obtained in subject 5: ");
  subject5 = int.parse(stdin.readLineSync()!);

  percentage =
      (subject1 + subject2 + subject3 + subject4 + subject5) / totalMarks * 100;

  if (percentage >= 90 && percentage <= 100) {
    grade = "A";
  } else if (percentage >= 80 && percentage <= 89) {
    grade = "B";
  } else if (percentage >= 70 && percentage <= 79) {
    grade = "C";
  } else if (percentage >= 60 && percentage <= 69) {
    grade = "D";
  } else if (percentage >= 50 && percentage <= 59) {
    grade = "E";
  } else {
    grade = "F";
  }

  // Calculate percentage for each subject
  percentageSubject1 = subject1 / totalSubjectMarks  * 100;
  percentageSubject2 = subject2 / totalSubjectMarks  * 100;
  percentageSubject3 = subject3 / totalSubjectMarks  * 100;
  percentageSubject4 = subject4 / totalSubjectMarks  * 100;
  percentageSubject5 = subject5 / totalSubjectMarks  * 100;

  // Calculate grade for each subject
  if (percentageSubject1 >= 90 && percentageSubject1 <= 100) {
    gradeSubject1 = "A";
  } else if (percentageSubject1 >= 80 && percentageSubject1 <= 89) {
    gradeSubject1 = "B";
  } else if (percentageSubject1 >= 70 && percentageSubject1 <= 79) {
    gradeSubject1 = "C";
  } else if (percentageSubject1 >= 60 && percentageSubject1 <= 69) {
    gradeSubject1 = "D";
  } else if (percentageSubject1 >= 50 && percentageSubject1 <= 59) {
    gradeSubject1 = "E";
  } else {
    gradeSubject1 = "F";
  }

  if (percentageSubject2 >= 90 && percentageSubject2 <= 100) {
    gradeSubject2 = "A";
  } else if (percentageSubject2 >= 80 && percentageSubject2 <= 89) {
    gradeSubject2 = "B";
  } else if (percentageSubject2 >= 70 && percentageSubject2 <= 79) {
    gradeSubject2 = "C";
  } else if (percentageSubject2 >= 60 && percentageSubject2 <= 69) {
    gradeSubject2 = "D";
  } else if (percentageSubject2 >= 50 && percentageSubject2 <= 59) {
    gradeSubject2 = "E";
  } else {
    gradeSubject2 = "F";
  }

  if (percentageSubject3 >= 90 && percentageSubject3 <= 100) {
    gradeSubject3 = "A";
  } else if (percentageSubject3 >= 80 && percentageSubject3 <= 89) {
    gradeSubject3 = "B";
  } else if (percentageSubject3 >= 70 && percentageSubject3 <= 79) {
    gradeSubject3 = "C";
  } else if (percentageSubject3 >= 60 && percentageSubject3 <= 69) {
    gradeSubject3 = "D";
  } else if (percentageSubject3 >= 50 && percentageSubject3 <= 59) {
    gradeSubject3 = "E";
  } else {
    gradeSubject3 = "F";
  }

  if (percentageSubject4 >= 90 && percentageSubject4 <= 100) {
    gradeSubject4 = "A";
  } else if (percentageSubject4 >= 80 && percentageSubject4 <= 89) {
    gradeSubject4 = "B";
  } else if (percentageSubject4 >= 70 && percentageSubject4 <= 79) {
    gradeSubject4 = "C";
  } else if (percentageSubject4 >= 60 && percentageSubject4 <= 69) {
    gradeSubject4 = "D";
  } else if (percentageSubject4 >= 50 && percentageSubject4 <= 59) {
    gradeSubject4 = "E";
  } else {
    gradeSubject4 = "F";
  }

  if (percentageSubject5 >= 90 && percentageSubject5 <= 100) {
    gradeSubject5 = "A";
  } else if (percentageSubject5 >= 80 && percentageSubject5 <= 89) {
    gradeSubject5 = "B";
  } else if (percentageSubject5 >= 70 && percentageSubject5 <= 79) {
    gradeSubject5 = "C";
  } else if (percentageSubject5 >= 60 && percentageSubject5 <= 69) {
    gradeSubject5 = "D";
  } else if (percentageSubject5 >= 50 && percentageSubject5 <= 59) {
    gradeSubject5 = "E";
  } else {
    gradeSubject5 = "F";
  }
  
  print("Grade Subject 1: $subject1 ($gradeSubject1)");
  print("Grade Subject 2: $subject2 ($gradeSubject2)");
  print("Grade Subject 3: $subject3 ($gradeSubject3)");
  print("Grade Subject 4: $subject4 ($gradeSubject4)");
  print("Grade Subject 5: $subject5 ($gradeSubject5)");

  print("Overall Percentage: $percentage");
  print("Overall Grade: $grade");
}
