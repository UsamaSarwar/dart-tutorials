/// Data Collections in Dart: Lists, Sets, Maps, and Where
///
/// This file provides a comprehensive guide to the core data collections in Dart:
/// Lists, Sets, and Maps. It also demonstrates the use of the `where` method for filtering collections.
///
/// Key Concepts:
/// 1. Lists: Ordered collections of items.
/// 2. Sets: Unordered collections of unique items.
/// 3. Maps: Collections of key-value pairs.
/// 4. Where: A method for filtering collections based on a condition.
///
/// Best Practices:
/// 1. Choose the right collection type: Use Lists when order matters, Sets when uniqueness is required, and Maps for key-value associations.
/// 2. Use type annotations: Specify the types of elements in your collections for better code clarity and safety.
/// 3. Use collection methods: Dart provides many useful methods for manipulating collections (e.g., add, remove, contains, map, where, etc.).
/// 4. Be mindful of mutability: Understand whether your collection is mutable (can be changed) or immutable (cannot be changed).
/// 5. Use `const` for compile-time constants: If your collection's content is known at compile time, use `const` for better performance.
/// 6. Use `final` for runtime constants: If your collection's content is known at runtime but will not change, use `final`.
/// 7. Use `where` for filtering: This is a powerful way to create new collections based on specific criteria.

// ignore_for_file: equal_elements_in_set

void main() {
  // --------------------------------------------------------------------------
  // 1. Lists
  // --------------------------------------------------------------------------
  print("\n--- Lists ---");

  // 1.1. Creating Lists
  // Lists are ordered collections of items.
  // They can contain duplicate elements.

  // List literal
  List<int> numbers = [1, 2, 3, 4, 5];
  print("List of numbers: $numbers"); // Output: List of numbers: [1, 2, 3, 4, 5]

  // List constructor
  List<String> names = List.from(["Alice", "Bob", "Charlie"]);
  print("List of names: $names"); // Output: List of names: [Alice, Bob, Charlie]

  // Empty list
  List<double> emptyList = [];
  print("Empty list: $emptyList"); // Output: Empty list: []

  // List with a fixed length (less common)
  List<bool> fixedLengthList = List.filled(3, false);
  print("Fixed length list: $fixedLengthList"); // Output: Fixed length list: [false, false, false]

  // 1.2. Accessing List Elements
  // Access elements by index (starting from 0).
  print("First number: ${numbers[0]}"); // Output: First number: 1
  print("Second name: ${names[1]}"); // Output: Second name: Bob

  // 1.3. Modifying Lists
  // Lists are mutable by default.
  numbers.add(6);
  print("List after adding 6: $numbers"); // Output: List after adding 6: [1, 2, 3, 4, 5, 6]

  numbers.insert(0, 0);
  print("List after inserting 0 at index 0: $numbers"); // Output: List after inserting 0 at index 0: [0, 1, 2, 3, 4, 5, 6]

  numbers.remove(3);
  print("List after removing 3: $numbers"); // Output: List after removing 3: [0, 1, 2, 4, 5, 6]

  numbers.removeAt(0);
  print("List after removing element at index 0: $numbers"); // Output: List after removing element at index 0: [1, 2, 4, 5, 6]

  numbers.removeLast();
  print("List after removing last element: $numbers"); // Output: List after removing last element: [1, 2, 4, 5]

  numbers.addAll([7, 8, 9]);
  print("List after adding multiple elements: $numbers"); // Output: List after adding multiple elements: [1, 2, 4, 5, 7, 8, 9]

  // 1.4. List Properties
  print("Length of numbers list: ${numbers.length}"); // Output: Length of numbers list: 7
  print("Is numbers list empty? ${numbers.isEmpty}"); // Output: Is numbers list empty? false
  print("Is emptyList empty? ${emptyList.isEmpty}"); // Output: Is emptyList empty? true
  print("Does numbers list contain 5? ${numbers.contains(5)}"); // Output: Does numbers list contain 5? true

  // 1.5. Iterating through Lists
  for (int number in numbers) {
    print("Number: $number");
  }
  // Output:
  // Number: 1
  // Number: 2
  // Number: 4
  // Number: 5
  // Number: 7
  // Number: 8
  // Number: 9

  numbers.forEach((number) => print("Number (forEach): $number"));
  // Output:
  // Number (forEach): 1
  // Number (forEach): 2
  // Number (forEach): 4
  // Number (forEach): 5
  // Number (forEach): 7
  // Number (forEach): 8
  // Number (forEach): 9

  // --------------------------------------------------------------------------
  // 2. Sets
  // --------------------------------------------------------------------------
  print("\n--- Sets ---");

  // 2.1. Creating Sets
  // Sets are unordered collections of unique items.
  // Duplicate elements are automatically removed.

  // Set literal
  Set<int> uniqueNumbers = {1, 2, 3, 2, 1};
  print("Set of unique numbers: $uniqueNumbers"); // Output: Set of unique numbers: {1, 2, 3}

  // Set constructor
  Set<String> uniqueNames = Set.from(["Alice", "Bob", "Alice"]);
  print("Set of unique names: $uniqueNames"); // Output: Set of unique names: {Alice, Bob}

  // Empty set
  Set<double> emptySet = {};
  print("Empty set: $emptySet"); // Output: Empty set: {}

  // 2.2. Modifying Sets
  uniqueNumbers.add(4);
  print("Set after adding 4: $uniqueNumbers"); // Output: Set after adding 4: {1, 2, 3, 4}

  uniqueNumbers.remove(2);
  print("Set after removing 2: $uniqueNumbers"); // Output: Set after removing 2: {1, 3, 4}

  uniqueNumbers.addAll({5, 6, 5});
  print("Set after adding multiple elements: $uniqueNumbers"); // Output: Set after adding multiple elements: {1, 3, 4, 5, 6}

  // 2.3. Set Operations
  Set<int> setA = {1, 2, 3};
  Set<int> setB = {3, 4, 5};

  print("Union of setA and setB: ${setA.union(setB)}"); // Output: Union of setA and setB: {1, 2, 3, 4, 5}
  print("Intersection of setA and setB: ${setA.intersection(setB)}"); // Output: Intersection of setA and setB: {3}
  print("Difference of setA and setB: ${setA.difference(setB)}"); // Output: Difference of setA and setB: {1, 2}

  // 2.4. Set Properties
  print("Length of uniqueNumbers set: ${uniqueNumbers.length}"); // Output: Length of uniqueNumbers set: 5
  print("Is uniqueNumbers set empty? ${uniqueNumbers.isEmpty}"); // Output: Is uniqueNumbers set empty? false
  print("Does uniqueNumbers set contain 3? ${uniqueNumbers.contains(3)}"); // Output: Does uniqueNumbers set contain 3? true

  // 2.5. Iterating through Sets
  for (int number in uniqueNumbers) {
    print("Unique number: $number");
  }
  // Output:
  // Unique number: 1
  // Unique number: 3
  // Unique number: 4
  // Unique number: 5
  // Unique number: 6

  uniqueNumbers.forEach((number) => print("Unique number (forEach): $number"));
  // Output:
  // Unique number (forEach): 1
  // Unique number (forEach): 3
  // Unique number (forEach): 4
  // Unique number (forEach): 5
  // Unique number (forEach): 6

  // --------------------------------------------------------------------------
  // 3. Maps
  // --------------------------------------------------------------------------
  print("\n--- Maps ---");

  // 3.1. Creating Maps
  // Maps are collections of key-value pairs.
  // Keys must be unique, but values can be duplicated.

  // Map literal
  Map<String, int> ages = {
    "Alice": 30,
    "Bob": 25,
    "Charlie": 35,
  };
  print("Map of ages: $ages"); // Output: Map of ages: {Alice: 30, Bob: 25, Charlie: 35}

  // Map constructor
  Map<String, String> cities = Map.from({
    "Alice": "New York",
    "Bob": "London",
    "Charlie": "Paris",
  });
  print("Map of cities: $cities"); // Output: Map of cities: {Alice: New York, Bob: London, Charlie: Paris}

  // Empty map
  Map<String, double> emptyMap = {};
  print("Empty map: $emptyMap"); // Output: Empty map: {}

  // 3.2. Accessing Map Elements
  // Access values by their keys.
  print("Alice's age: ${ages["Alice"]}"); // Output: Alice's age: 30
  print("Bob's city: ${cities["Bob"]}"); // Output: Bob's city: London

  // 3.3. Modifying Maps
  ages["David"] = 40;
  print("Map after adding David: $ages"); // Output: Map after adding David: {Alice: 30, Bob: 25, Charlie: 35, David: 40}

  ages.remove("Bob");
  print("Map after removing Bob: $ages"); // Output: Map after removing Bob: {Alice: 30, Charlie: 35, David: 40}

  ages.addAll({"Eve": 28, "Frank": 32});
  print("Map after adding multiple elements: $ages"); // Output: Map after adding multiple elements: {Alice: 30, Charlie: 35, David: 40, Eve: 28, Frank: 32}

  // 3.4. Map Properties
  print("Length of ages map: ${ages.length}"); // Output: Length of ages map: 5
  print("Is ages map empty? ${ages.isEmpty}"); // Output: Is ages map empty? false
  print("Does ages map contain key 'Alice'? ${ages.containsKey("Alice")}"); // Output: Does ages map contain key 'Alice'? true
  print("Does ages map contain value 30? ${ages.containsValue(30)}"); // Output: Does ages map contain value 30? true

  // 3.5. Iterating through Maps
  ages.forEach((name, age) => print("$name is $age years old"));
  // Output:
  // Alice is 30 years old
  // Charlie is 35 years old
  // David is 40 years old
  // Eve is 28 years old
  // Frank is 32 years old

  for (String name in ages.keys) {
    print("$name's age: ${ages[name]}");
  }
  // Output:
  // Alice's age: 30
  // Charlie's age: 35
  // David's age: 40
  // Eve's age: 28
  // Frank's age: 32

  for (int age in ages.values) {
    print("Age: $age");
  }
  // Output:
  // Age: 30
  // Age: 35
  // Age: 40
  // Age: 28
  // Age: 32

  // --------------------------------------------------------------------------
  // 4. Where
  // --------------------------------------------------------------------------
  print("\n--- Where ---");

  // 4.1. Filtering Lists
  List<int> numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbersList = numbersList.where((number) => number % 2 == 0).toList();
  print("Even numbers: $evenNumbersList"); // Output: Even numbers: [2, 4, 6, 8, 10]

  List<int> oddNumbersList = numbersList.where((number) => number % 2 != 0).toList();
  print("Odd numbers: $oddNumbersList"); // Output: Odd numbers: [1, 3, 5, 7, 9]

  List<int> greaterThanFive = numbersList.where((number) => number > 5).toList();
  print("Numbers greater than 5: $greaterThanFive"); // Output: Numbers greater than 5: [6, 7, 8, 9, 10]

  // 4.2. Filtering Sets
  Set<int> numbersSet = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  Set<int> evenNumbersSet = numbersSet.where((number) => number % 2 == 0).toSet();
  print("Even numbers (set): $evenNumbersSet"); // Output: Even numbers (set): {2, 4, 6, 8, 10}

  // 4.3. Filtering Maps (using entries)
  Map<String, int> agesMap = {
    "Alice": 30,
    "Bob": 25,
    "Charlie": 35,
    "David": 40,
    "Eve": 28,
  };

  Map<String, int> olderThan30 = Map.fromEntries(
    agesMap.entries.where((entry) => entry.value > 30),
  );
  print("People older than 30: $olderThan30"); // Output: People older than 30: {Charlie: 35, David: 40}
}
