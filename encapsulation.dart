// Encapsulation in Dart is the process of hiding implementation details of a class or object from the outside world, and exposing only the necessary and safe methods and properties. This can be achieved through the use of private and public keywords. Here's an example code that demonstrates encapsulation in Dart:

class BankAccount {
  double _balance = 0.0; // private variable

  BankAccount(double initialBalance) {
    this._balance = initialBalance;
  }

  void deposit(double amount) {
    _balance += amount; // accessing private variable i.e. _balance = _balance + amount
  }

  void withdraw(double amount) {
    _balance -= amount; // accessing private variable
  }

  double getBalance() {
    return _balance; // accessing private variable
  }
}

void main() {
  BankAccount myAccount = new BankAccount(1000.0);
  myAccount.deposit(500.0);
  myAccount.withdraw(200.0);
  print('Current balance: ${myAccount.getBalance()}');
}
