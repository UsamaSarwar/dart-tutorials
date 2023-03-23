/// Assignment 4.1
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
/// Note: Use Classes and Loops

import 'dart:io';

class Student {
  double grandTotalMarks = 500;
  double totalSubjectMarks = 100;
  double grandObtainedMarks = 0;
  double overallPercentage = 0;
  String overAllGrade = '';
  List<double> subjectMarks = [];
  List<double> subjectPercentages = [];
  List<String> subjectGrades = [];
}

void main() {
  Student s1 = Student();

  stdout.write('Enter total marks of each subject: 500\n');

  for (int i = 0; i < 5; i++) {
    stdout.write('Enter marks obtained in subject ${i + 1}: ');
    s1.subjectMarks.add(double.parse(stdin.readLineSync()!));
  }

  // Calculate Percentage of each subject and Grade
  for (var i = 0; i < 5; i++) {
    // Calculate Percentage of each subject
    s1.subjectPercentages.add((s1.subjectMarks[i] / s1.totalSubjectMarks) * 100);

    // Calculate Grade of each subject
    if (s1.subjectPercentages[i] >= 90 && s1.subjectPercentages[i] <= 100) {
      s1.subjectGrades.add('A');
    } else if (s1.subjectPercentages[i] >= 80 &&
        s1.subjectPercentages[i] <= 89) {
      s1.subjectGrades.add('B');
    } else if (s1.subjectPercentages[i] >= 70 &&
        s1.subjectPercentages[i] <= 79) {
      s1.subjectGrades.add('C');
    } else if (s1.subjectPercentages[i] >= 60 &&
        s1.subjectPercentages[i] <= 69) {
      s1.subjectGrades.add('D');
    } else if (s1.subjectPercentages[i] >= 50 &&
        s1.subjectPercentages[i] <= 59) {
      s1.subjectGrades.add('E');
    } else if (s1.subjectPercentages[i] >= 0 &&
        s1.subjectPercentages[i] <= 49) {
      s1.subjectGrades.add('F');
    }
  }

  // Calculate Overall Percentage
  for (var i = 0; i < 5; i++) {
    s1.grandObtainedMarks += s1.subjectMarks[i];
  }
  // Dry Run
  // 87 + 45 + 65 + 76 + 87 = 356

  s1.overallPercentage = (s1.grandObtainedMarks / s1.grandTotalMarks) * 100;

  // Calculate overall Grade
  if (s1.overallPercentage >= 90 && s1.overallPercentage <= 100) {
    s1.overAllGrade = 'A';
  } else if (s1.overallPercentage >= 80 && s1.overallPercentage <= 89) {
    s1.overAllGrade = 'B';
  } else if (s1.overallPercentage >= 70 && s1.overallPercentage <= 79) {
    s1.overAllGrade = 'C';
  } else if (s1.overallPercentage >= 60 && s1.overallPercentage <= 69) {
    s1.overAllGrade = 'D';
  } else if (s1.overallPercentage >= 50 && s1.overallPercentage <= 59) {
    s1.overAllGrade = 'E';
  } else if (s1.overallPercentage >= 0 && s1.overallPercentage <= 49) {
    s1.overAllGrade = 'F';
  }

  // Print the result
  for (var i = 0; i < 5; i++) {
    stdout.write(
        '\nGrade Subject ${i + 1}: ${s1.subjectMarks[i]} ${s1.subjectPercentages[i]} (${s1.subjectGrades[i]})');
  }

  print('\n\nOverall Percentage: ${s1.overallPercentage}%');
  print('Overall Grade: ${s1.overAllGrade}');
}