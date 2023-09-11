// Printing in Dart
main() {
  /// String
  print('Hello World'); //? Hello World 
  print("Hello World"); //? Hello World 
  print("'You Name'"); //? 'You Name'
  print('"You Name"'); //? "You Name"
  print("\"You Name\""); //? "You Name"
  print('I\'m Usama Sarwar.'); //? I'm Usama Sarwar.
  print('\$100'); //? $100
  int num=0;
  print(num); //? 0
  print("Value of Num is $num"); //? Value of Num is 0
  print("Value of Num is ${num}"); //? Value of Num is 0
  print("Value of Num is " + num.toString()); //? Value of Num is 0

  /// Integer
  print(25); //? 25

  /// Double
  print(25.5); //? 25.5

  /// Boolean
  print(true); //? true

  /// List
  print(["Usama", "Sarwar", 27, true]); //? ["Usama", "Sarwar", 27, true]

  /// Map
  print({
    "firstName": "Usama", 
    "lastName": "Sarwar"
    }); //? {"firstName": "Usama", "lastName": "Sarwar"}
  
  /// Set
  print({"Pakistan", "India", "China"}); //? {"Pakistan", "India", "China"}
}