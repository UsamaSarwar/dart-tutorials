/// getCurrentTime() is a user-defined function.
///
/// It returns the current time.
///
/// This is a function with no return type and no input parameters.
void showCurrentDate() {
  DateTime dateTime = DateTime.now(); // 2021-06-05 12:00:00.000
  // Date
  int date = dateTime.day; // 5
  // Month
  int month = dateTime.month; // 6
  // Year
  int year = dateTime.year; // 2021

  // 05-06-2021
  print("$date/$month/$year");
}

/// double Percentage(double obtainedMarks, double totalMarks) is a user-defined function.
///
/// It returns the percentage of the obtained marks.
///
/// This is a function with return type and input parameters.
double percentage(double obtainedMarks, double totalMarks) {
  double percentage = (obtainedMarks / totalMarks) * 100;
  return percentage;
}

/// double Percentage(double obtainedMarks, double totalMarks) is a user-defined function.
///
/// It returns the percentage of the obtained marks.
///
/// This is a function with return type and input parameters.
double percentage_named({required double obtainedMarks, required  double totalMarks}) {
  double percentage = (obtainedMarks / totalMarks) * 100;  
  return double.parse(percentage.toStringAsFixed(2));
}

// main() is a built-in function that is automatically called when the program starts.
void main() {
  // showCurrentDate() is a user-defined function that shows the current date.
  showCurrentDate();
  // percentage() is a user-defined function that returns the percentage of the obtained marks.
  print('Percentage: ${percentage(80, 120)}%');
  // percentage_named() is a user-defined function that returns the percentage of the obtained marks.
  print('Percentage: ${percentage_named(obtainedMarks: 80, totalMarks: 120)}%');
}
