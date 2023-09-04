import 'dart:io';

void main() {
  stdout.write('Enter total marks of English: ');
  int englishTotalMarks = int.parse(stdin.readLineSync()!);
  stdout.write('Enter obtained marks of English: ');
  int englishObtainedMarks = int.parse(stdin.readLineSync()!);

  stdout.write('Enter total marks of Urdu: ');
  int urduTotalMarks = int.parse(stdin.readLineSync()!);
  stdout.write('Enter obtained marks of Urdu: ');
  int urduObtainedMarks = int.parse(stdin.readLineSync()!);

  stdout.write('Enter total marks of Math: ');
  int mathTotalMarks = int.parse(stdin.readLineSync()!);
  stdout.write('Enter obtained marks of Math: ');
  int mathObtainedMarks = int.parse(stdin.readLineSync()!);

  stdout.write('Enter total marks of Science: ');
  int scienceTotalMarks = int.parse(stdin.readLineSync()!);
  stdout.write('Enter obtained marks of Science: ');
  int scienceObtainedMarks = int.parse(stdin.readLineSync()!);

  stdout.write('Enter total marks of Computer: ');
  int computerTotalMarks = int.parse(stdin.readLineSync()!);
  stdout.write('Enter obtained marks of Computer: ');
  int computerObtainedMarks = int.parse(stdin.readLineSync()!);

  int totalMarks = englishTotalMarks + urduTotalMarks + mathTotalMarks + scienceTotalMarks + computerTotalMarks;
  int obtainedMarks = englishObtainedMarks + urduObtainedMarks + mathObtainedMarks + scienceObtainedMarks + computerObtainedMarks;

  double percentage = (obtainedMarks / totalMarks) * 100;

  String grade;

  if (percentage >= 90) {
    grade = 'A+';
  } else if (percentage >= 80) {
    grade = 'A';
  } else if (percentage >= 70) {
    grade = 'B';
  } else if (percentage >= 60) {
    grade = 'C';
  } else if (percentage >= 50) {
    grade = 'D';
  } else {
    grade = 'F';
  }

  print('Percentage: ${percentage.toStringAsFixed(2)}%');
  print('Grade: $grade');
}


// import 'dart:io';

// void main(List<String> args) {


//   // // Take input from user via terminal
//   // print("Enter username: ");
//   // String? userUsername = stdin.readLineSync();

//   // print("Enter password: ");
//   // String? userPassword = stdin.readLineSync();

//   // // Show Credentials
//   // print("Username: $userUsername");
//   // print("Password: $userPassword");

//   // Take number from user via terminal
//   print("Enter a number: ");
//   int? userNumber = int.parse(stdin.readLineSync()!);

//   // Check if number is even or odd
//   if (userNumber % 2 == 0) {
//     print("The given number is Even.");
//   } else {
//     print("The given number is Odd.");
//   }
// }