/// Null Safety in Dart

/// Introduction to Null Safety

/// Null safety is a significant feature introduced in Dart 2.12 that aims to eliminate null pointer exceptions, a common source of bugs in many programming languages.  It does this by making types non-nullable by default. This means that variables cannot hold a `null` value unless explicitly allowed.

/// Key Concepts

/// 1.  Non-Nullable by Default:
///   - In null-safe Dart, types are non-nullable by default.
///   - `int x = 10;` means `x` can only hold integer values, not `null`.
///   - Trying to assign `null` to `x` will result in a compile-time error.

/// 2.  Nullable Types:
///   - To allow a variable to hold `null`, you must explicitly mark it as nullable using the `?` (question mark) suffix.
///   - `int? y = null;` means `y` can hold either an integer or `null`.

/// 3.  Null-Aware Operators:
///   - Dart provides several operators to work safely with nullable types:
///       - `?.` (null-aware access): Accesses a property or method only if the object is not `null`.
///       - `??` (null-aware assignment): Assigns a value only if the left-hand side is `null`.
///       - `??=` (null-aware assignment): Assigns a value only if the variable is `null`.
///       - `!` (null assertion operator): Tells the compiler that you are sure a nullable variable is not `null` at this point. Use with caution!

/// Sample Code: Null Safety Basics

// ignore_for_file: unused_local_variable, dead_code, invalid_null_aware_operator, dead_null_aware_expression, unnecessary_non_null_assertion, unnecessary_null_comparison

void main() {
  // Non-nullable variable
  int age = 30;
  // age = null; // Compile-time error: A value of type 'Null' can't be assigned to a variable of type 'int'.

  // Nullable variable
  int? nullableAge = null;
  print('Nullable Age: $nullableAge'); // Output: Null
  nullableAge = 40;
  print('Nullable Age: $nullableAge'); // Output: 40

  // Null-aware access
  String? name;
  print('Name Length: ${name?.length}'); // Output: null (no error)
  name = "Alice";
  print('Name Length: ${name?.length}'); // Output: 5

  // Null-aware assignment
  String? city;
  city ??= "Unknown";
  print('City: $city'); // Output: Unknown
  city = "New York";
  city ??= "Unknown";
  print('City: $city'); // Output: New York

  // Null-aware assignment
  String? country;
  country = country ?? "Unknown";
  print('Country: $country'); // Output: Unknown
  country = "USA";
  country = country ?? "Unknown";
  print('Country: $country'); // Output: USA

  // Null assertion operator (use with caution!)
  String? address;
  // print('Address Length: ${address.length}'); // Error: The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
  address = "123 Main St";
  print('Address Length: ${address.length}'); // Output: 10
  print('Address Length: ${address!.length}'); // Output: 10 (we are sure it's not null)
  // address = null;
  // print('Address Length: ${address!.length}'); // Runtime error: Null check operator used on a null value

  // Example with a class
  Person? person = Person("Bob", 25);
  print('Person Name: ${person?.name}'); // Output: Bob
  person = null;
  print('Person Name: ${person?.name}'); // Output: null
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

/// Type Promotion in Dart

/// Type promotion is a powerful feature in Dart's null safety system. It allows the compiler to automatically infer that a nullable variable is non-nullable within a certain scope, based on checks you perform.

/// How Type Promotion Works

/// 1.  Null Checks: When you check if a nullable variable is not `null` (e.g., using `!= null`), the compiler understands that within the scope of that check, the variable is guaranteed to be non-nullable.
/// 2.  Automatic Promotion: The compiler "promotes" the type of the variable from nullable to non-nullable within that scope.
/// 3.  Smart Cast: You can then use the variable as if it were non-nullable, without needing to use null-aware operators or the null assertion operator.

/// Sample Code: Type Promotion

void typePromotionExample() {
  String? message = "Hello";

  if (message != null) {
    // Inside this block, 'message' is promoted to String (non-nullable).
    print('Message Length: ${message.length}'); // No error, no need for ?. or !
    print('Uppercase Message: ${message.toUpperCase()}');
  } else {
    print('Message is null');
  }

  // Outside the if block, 'message' is still String? (nullable).
  // print('Message Length: ${message.length}'); // Error: The property 'length' can't be unconditionally accessed because the receiver can be 'null'.

  String? anotherMessage;
  if (anotherMessage == null) {
    print("anotherMessage is null");
  } else {
    print('anotherMessage Length: ${anotherMessage.length}');
  }
}

/// Late Keyword in Dart

/// The `late` keyword is used to declare a non-nullable variable that will be initialized later. It's useful when you can't initialize a variable at the time of declaration but you know it will be initialized before it's used.

/// Use Cases for `late`

/// 1.  Initialization in a Constructor: When a variable's value depends on constructor parameters or other setup.
/// 2.  Lazy Initialization: When you want to delay the initialization of a variable until it's actually needed.
/// 3.  External Dependencies: When a variable's value is provided by an external source that's not available at the time of declaration.

/// Sample Code: Late Keyword

class MyClass {
  late String description; // Declared as late

  MyClass(String initialDescription) {
    _initializeDescription(initialDescription);
  }

  void _initializeDescription(String initialDescription) {
    description = initialDescription; // Initialized later
  }

  void printDescription() {
    print('Description: $description');
  }
}

void lateExample() {
  MyClass obj = MyClass("This is a description");
  obj.printDescription(); // Output: Description: This is a description

  late String lateString;
  lateString = "Late String";
  print(lateString);

  late final String lateFinalString;
  lateFinalString = "Late Final String";
  print(lateFinalString);
}

/// Null Safety Exercise

/// Scenario: You are building a simple e-commerce application. You have a `Product` class with properties like `name`, `price`, and an optional `discount`.

/// Task:

/// 1.  Create a `Product` class with the following properties:
///   - `name` (non-nullable String)
///   - `price` (non-nullable double)
///   - `discount` (nullable double)
/// 2.  Create a function `calculateFinalPrice` that takes a `Product` object and returns the final price after applying the discount (if any).
/// 3.  Use null-aware operators and type promotion to handle the optional discount.
/// 4.  Create a function `printProductDetails` that takes a `Product` object and prints its details.
/// 5.  Use null-aware operators to handle the optional discount when printing.
/// 6. Create a function `createProduct` that takes name, price and discount and return a Product object.
/// 7. Create a function `createProductWithNullDiscount` that takes name and price and return a Product object with null discount.
/// 8. Create a function `createProductWithLateDiscount` that takes name and price and return a Product object with late discount.
/// 9. Create a function `createProductWithLateFinalDiscount` that takes name and price and return a Product object with late final discount.

/// Sample Code: Null Safety Exercise

class Product {
  String name;
  double price;
  double? discount;
  late double lateDiscount;
  late final double lateFinalDiscount;

  Product(this.name, this.price, {this.discount});

  Product.withLateDiscount(this.name, this.price) {
    lateDiscount = 0.1;
  }

  Product.withLateFinalDiscount(this.name, this.price) {
    lateFinalDiscount = 0.1;
  }
}

double calculateFinalPrice(Product product) {
  if (product.discount != null) {
    // Type promotion: product.discount is now non-nullable
    return product.price - (product.price * product.discount!);
  } else {
    return product.price;
  }
}

void printProductDetails(Product product) {
  print('Product Name: ${product.name}');
  print('Product Price: \$${product.price}');
  print('Product Discount: ${product.discount?.toString() ?? "No discount"}');
  print('Product Late Discount: ${product.lateDiscount}');
  print('Product Late Final Discount: ${product.lateFinalDiscount}');
}

Product createProduct(String name, double price, double discount) {
  return Product(name, price, discount: discount);
}

Product createProductWithNullDiscount(String name, double price) {
  return Product(name, price);
}

Product createProductWithLateDiscount(String name, double price) {
  return Product.withLateDiscount(name, price);
}

Product createProductWithLateFinalDiscount(String name, double price) {
  return Product.withLateFinalDiscount(name, price);
}

void nullSafetyExercise() {
  Product product1 = createProduct("Laptop", 1200.0, 0.1);
  Product product2 = createProductWithNullDiscount("Mouse", 25.0);
  Product product3 = createProductWithLateDiscount("Keyboard", 100.0);
  Product product4 = createProductWithLateFinalDiscount("Monitor", 300.0);

  printProductDetails(product1);
  print('Final Price: \$${calculateFinalPrice(product1)}\n');

  printProductDetails(product2);
  print('Final Price: \$${calculateFinalPrice(product2)}\n');

  printProductDetails(product3);
  print('Final Price: \$${calculateFinalPrice(product3)}\n');

  printProductDetails(product4);
  print('Final Price: \$${calculateFinalPrice(product4)}\n');
}

/// Tips and Tricks

/// 1.  Embrace Null Safety: Don't try to avoid it. It's a powerful tool for writing safer code.
/// 2.  Use Null-Aware Operators: They make your code more concise and readable.
/// 3.  Use Type Promotion: Take advantage of type promotion to avoid unnecessary null checks.
/// 4.  Be Careful with `!`: The null assertion operator should be used sparingly. If you're not 100% sure a variable is non-null, don't use it.
/// 5.  Use `late` Wisely: Only use `late` when you're sure the variable will be initialized before it's used.
/// 6. Consider Default Values: When you have a nullable variable, consider providing a default value using the `??` operator.
/// 7. Early Null Checks: Perform null checks as early as possible in your code to take advantage of type promotion.
/// 8. Readability: Use null-aware operators and type promotion to make your code more readable and easier to understand.
/// 9. Testing: Write unit tests to ensure that your null safety logic is correct.
/// 10. Code Reviews: Have your code reviewed by other developers to catch potential null safety issues.

void main2() {
  typePromotionExample();
  lateExample();
  nullSafetyExercise();
}
