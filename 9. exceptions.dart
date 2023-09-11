/// Exceptions in Dart
/// Dart has a rich set of exceptions that are used to indicate errors.
/// The most common exception is the [Exception] class.
/// The [Exception] class is the base class for all exceptions.
/// The [Exception] class is used to indicate that an error has occurred.

void main(List<String> args) {
  /// try-catch block
  try {
    // code that might throw an exception
  } catch (error) {
    // code that will be executed if an exception is thrown
  }

  /// try-catch-finally block
  try {
    // code that might throw an exception
  } catch (error) {
    // code that will be executed if an exception is thrown
  } finally {
    // code that will be executed regardless of whether an exception is thrown or not
  }

  /// throw an exception
  // throw Exception("An exception has occurred");

  /// try-catch block
  try {
    // Divided by zero
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (error) {
    print(error);
  }
  //! If don't use exception handling
  //! int result = 12 ~/ 0;
  //!   print("The result is $result");

  /// try-catch-finally block
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (error) {
    print(error);
  } finally {
    print("This is finally block and is always executed");
  }
  
  depositMoney(int amount) {
    if (amount < 0) {
      throw "Amount can't be less than zero";
    }
  }

  /// throw an exception
  try {
    depositMoney(-200);
  } catch (error) {
    print(error);
  } finally {
    print("Transaction completed");
  }
  
}
