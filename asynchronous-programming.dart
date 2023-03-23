/// Asynchronous programming in Dart
/// Asynchronous programming is a style of programming where the execution of a task is not dependent on the previous task.
/// In other words, a task is executed without blocking the main thread. In asynchronous programming, a task is executed in the background.
import 'dart:async';

void main(List<String> args) {
  // downloading() {
  //   // Timer
  //   // The Timer class is used to execute a function after a specified duration.
  //   Timer(Duration(seconds: 5), () {
  //     print("The file has been downloaded.");
  //   });
  // }

  // print("Main program: Started");
  // downloading();
  // print("Main program: Ended");

  // The Future class is used to represent a value that will be available in the future.

  // The Future class has two methods:
  // then() - used to execute a function when the future completes.
  // catchError() - used to execute a function when the future completes with an error.

  Future<String> checkLoginCredentials() {
    Future<String> result = Future.delayed(Duration(seconds: 6), () {
      return "Login Verified";
    });
    return result;
  }

  print("Main program: Started");
  checkLoginCredentials().then((result) {
    print(result);
    print('Welcome to System');
  });
}
