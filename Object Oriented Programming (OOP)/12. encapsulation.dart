// Encapsulation in Dart is the process of hiding implementation details of a class or object from the outside world, and exposing only the necessary and safe methods and properties. This can be achieved through the use of private and public keywords. Here's an example code that demonstrates encapsulation in Dart:

class BankAccount {
  double _balance = 0;

  // Constructor
  BankAccount(double initialBalance) {
    this._balance = initialBalance;
  }
  // BankAccount(this._balance); // same as above (Shorthand)
  // BankAccount({required this._balance}); // same as above (Named constructor)

  // Functions
  deposit(double amount) {
    _balance += amount; // accessing private variable i.e. _balance = _balance + amount
  }

  withdraw(double amount) {
    _balance -= amount; // accessing private variable i.e. _balance = _balance - amount
  }

  double getBalance() {
    return _balance; // accessing private variable
  }
}

main() {
  BankAccount myAccount = BankAccount(1000.0); // $1000 initial balance
  myAccount.deposit(500.0); // deposit $500 into my account, $1500
  myAccount.withdraw(200.0); // withdraw $200 from my account, $1300
  print('Current balance: ${myAccount.getBalance()}'); // $1300
}
