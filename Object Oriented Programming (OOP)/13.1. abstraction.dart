/// Abstraction in Dart
/// Abstraction is the process of hiding the implementation details of a class or object, and exposing only the necessary and safe methods and properties. This can be achieved through the use of abstract classes and interfaces. Here's an example code that demonstrates abstraction in Dart:

// BankAccount is a parent class
class BankAccount {
  // Public Fields
  double balance = 0;

  // Private Fields
  double _interestRate = 0.07;

  // Constructor
  BankAccount(double initialBalance) {
    this.balance = initialBalance;
  }

  // Functions
  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    balance -= amount;
  }

  void increaseYearlyInterest() {
    balance += balance * _interestRate; // balance = balance + (balance * _interestRate)
  }

  double getBalance() {
    return balance;
  }
}

class UserAccount extends BankAccount {
  // Public Fields
  String name = '';

  // Constructor
  UserAccount(String name, double initialBalance) : super(initialBalance) {
    this.name = name;
  }

  // Functions
  void printName() {
    print('Account holder name: $name');
  }
}

void main() {
  UserAccount userAccount = UserAccount('Usama', 1000.0);
  userAccount.printName(); // Account holder name: Usama
  userAccount.deposit(500.0); // deposit $500 into my account, $1500
  userAccount.withdraw(200.0); // withdraw $200 from my account, $1300
  userAccount._interestRate = 0.1; // accessing private variable
  userAccount.increaseYearlyInterest(); // increase yearly interest, $1430
  print('Current balance: ${userAccount.getBalance()}'); // Current balance: 1430.0
}