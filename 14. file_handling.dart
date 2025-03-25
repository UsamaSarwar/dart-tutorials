/// File Handling in Dart
///
/// This tutorial demonstrates the fundamental operations for working with files in Dart.
/// File handling is a crucial aspect of many applications, allowing you to:
///
/// * Store Data: Save information persistently, even after your program closes.
/// * Load Data: Retrieve previously saved data to use in your application.
/// * Process Data: Read data from files, manipulate it, and write the results back to files.
/// * Configuration: Store settings and preferences in configuration files.
/// * Logging: Record events and errors in log files.
///
/// Core Concepts:
///
/// 1.  `dart:io` Library: Dart's built-in library for interacting with the file system. It provides classes and functions for file operations.
/// 2.  `File` Class: Represents a file on your computer's file system. You use `File` objects to perform actions like reading, writing, and deleting files.
/// 3.  File Paths: A string that specifies the location of a file on your computer. It can be an absolute path (e.g., `/Users/username/documents/my_file.txt`) or a relative path (e.g., `my_file.txt`, which refers to a file in the same directory as your Dart program).
/// 4.  `existsSync()`: A method to check if a file exists before attempting to read or delete it.
/// 5.  `readAsStringSync()`: A method to read the entire content of a file as a single string.
/// 6.  `writeAsStringSync()`: A method to write a string to a file, overwriting its existing content.
/// 7.  `deleteSync()`: A method to delete a file.
/// 8. `dart:convert` Library: Dart's built-in library for converting data to and from different formats, including JSON.
/// 9. `jsonEncode()`: A method to convert a Dart object (like a Map or List) to a JSON string (serialization).
/// 10. `jsonDecode()`: A method to convert a JSON string to a Dart object (deserialization).
/// 11. Error Handling: Using `try-catch` blocks to gracefully handle potential errors like file not found or permission issues.
/// 12. File Modes: Specifies how a file should be opened (e.g., for reading, writing, or appending).
/// 13. Asynchronous Operations: Operations that don't block the main thread, allowing your program to continue running while waiting for file I/O to complete.
/// 14. Closing Files: Although Dart will close files automatically, it's good practice to close them manually to release resources.
///
/// Common File Operations:
///
/// * Reading a File: Opening a file and reading its contents.
/// * Writing to a File: Creating a new file or modifying an existing one by writing data to it.
/// * Appending to a File: Adding data to the end of an existing file without overwriting its content.
/// * Deleting a File: Removing a file from the file system.
/// * Reading a Json File: Reading a file that contains json data.
/// * Writing a Json File: Writing data to a file in json format.
///
/// This tutorial covers the following:
///
/// * Reading Text Files: How to read the content of a regular text file.
/// * Writing Text Files: How to write text to a file.
/// * Appending Text Files: How to add text to the end of a file.
/// * Reading JSON Files: How to read the content of a JSON file.
/// * Writing JSON Files: How to write JSON data to a file.
/// * Appending JSON Files: How to add JSON data to the end of a file.
/// * Deleting Files: How to remove files from your system.
/// * Error Handling: How to deal with potential problems that can occur during file operations.
/// * Asynchronous File Operations: How to perform file operations without blocking the main thread.
///
/// Let's dive into the code!
///
/// ```dart
/// // The rest of the code from the previous example goes here...
/// ```
///
/// Note: This code uses synchronous methods (`readAsStringSync`, `writeAsStringSync`, `deleteSync`). For very large files or operations that might take a long time, consider using asynchronous methods (`readAsString`, `writeAsString`, `delete`) to avoid blocking the main thread.

import 'dart:io';
import 'dart:convert';

void main() {
  // --- File Paths ---
  // These are the names we'll use to refer to our files.
  // 'my_file.txt' will be a regular text file.
  // 'my_data.json' will be a file containing JSON data.
  // Example of an absolute path: '/Users/usamasarwar/my_absolute_file.txt'
  final String filePath = 'my_file.txt';
  final String filePathJson = 'my_data.json';

  // --- Read File ---
  // First, we'll try to read the contents of our text file.
  readFile(filePath);
  // Then, we'll try to read the contents of our JSON file.
  readFileJson(filePathJson);
  // Example of reading a file asynchronously
  readFileAsync(filePath);

  // --- Write File ---
  // Now, we'll write some text to our text file.
  writeFile(filePath, 'Hello, Dart File!');
  // And we'll write some JSON data to our JSON file.
  writeFileJson(filePathJson, {'name': 'John Doe', 'age': 30});

  // --- Append File ---
  // Now, we'll append some text to our text file.
  writeFile(filePath, '\nThis is appended text!', append: true);
  // And we'll append some JSON data to our JSON file.
  writeFileJson(filePathJson, {'city': 'New York'}, append: true);

  // --- Delete File ---
  // Finally, we'll delete both files to clean up.
  deleteFile(filePath);
  deleteFile(filePathJson);
}

// --- Read File ---

/// Reads the content of a text file.
///
/// This function takes the file's path as input (e.g., 'my_file.txt').
/// It tries to open the file and read its entire content as text.
/// If the file exists, it prints the content to the console.
/// If the file doesn't exist, it prints a "File not found" message.
/// If there's any error during reading, it prints an error message.
void readFile(String filePath) {
  // Create a File object. This represents the file on your computer.
  final file = File(filePath);

  // Check if the file exists before trying to read it.
  if (file.existsSync()) {
    try {
      // Read the entire file content as a single string.
      final contents = file.readAsStringSync();
      // Print the file content to the console.
      print('File Content ($filePath):\n$contents');
    } on FileSystemException catch (e) {
      // If any error occurs during reading, print the error message.
      print('Error reading file ($filePath): $e');
    }
  } else {
    // If the file doesn't exist, print a "File not found" message.
    print('File not found: $filePath');
  }
  // Note: Dart will automatically close the file when the function ends.
}

/// Reads the content of a JSON file.
///
/// This function is similar to `readFile`, but it's designed for JSON files.
/// It reads the file content as text, then converts it to a Dart object (like a Map).
/// If the file exists and is valid JSON, it prints the JSON data.
/// If the file doesn't exist or is not valid JSON, it prints an appropriate message.
void readFileJson(String filePath) {
  // Create a File object.
  final file = File(filePath);

  // Check if the file exists.
  if (file.existsSync()) {
    try {
      // Read the entire file content as a single string.
      final contents = file.readAsStringSync();
      // Convert the JSON string to a Dart object (Map or List).
      final jsonData = jsonDecode(contents);
      // Print the JSON data to the console.
      print('File Content ($filePath):\n$jsonData');
    } on FileSystemException catch (e) {
      // If any error occurs during reading, print the error message.
      print('Error reading file ($filePath): $e');
    } on FormatException catch (e) {
      // If any error occurs during decoding, print the error message.
      print('Error decoding JSON in file ($filePath): $e');
    }
  } else {
    // If the file doesn't exist, print a "File not found" message.
    print('File not found: $filePath');
  }
  // Note: Dart will automatically close the file when the function ends.
}

/// Reads the content of a text file asynchronously.
///
/// This function demonstrates how to read a file without blocking the main thread.
Future<void> readFileAsync(String filePath) async {
  final file = File(filePath);

  if (await file.exists()) {
    try {
      final contents = await file.readAsString(); // Use 'await' to get the result
      print('Async File Content ($filePath):\n$contents');
    } on FileSystemException catch (e) {
      print('Async Error reading file ($filePath): $e');
    }
  } else {
    print('Async File not found: $filePath');
  }
  // Note: Dart will automatically close the file when the function ends.
}

// --- Write File ---

/// Writes text content to a file.
///
/// This function takes the file's path and the text to write as input.
/// It creates the file if it doesn't exist.
/// If `append` is `false` (default), it overwrites the file if it exists.
/// If `append` is `true`, it adds the content to the end of the file.
/// If the write is successful, it prints a success message.
/// If there's any error during writing, it prints an error message.
void writeFile(String filePath, String content, {bool append = false}) {
  // Create a File object.
  final file = File(filePath);

  try {
    // Write the given text content to the file.
    // If the file exists and append is false, it will be overwritten.
    // If the file doesn't exist, it will be created.
    // If append is true, the content will be added to the end of the file.
    file.writeAsStringSync(content, mode: append ? FileMode.append : FileMode.write);
    // Print a success message.
    print('File written successfully: $filePath');
  } on FileSystemException catch (e) {
    // If any error occurs during writing, print the error message.
    print('Error writing to file ($filePath): $e');
  }
  // Note: Dart will automatically close the file when the function ends.
}

/// Writes JSON content to a file.
///
/// This function is similar to `writeFile`, but it's designed for JSON data.
/// It takes a Dart object (like a Map) and converts it to a JSON string before writing.
/// If `append` is `false` (default), it overwrites the file if it exists.
/// If `append` is `true`, it adds the JSON data to the end of the file (as a new JSON object).
/// If the write is successful, it prints a success message.
/// If there's any error during encoding or writing, it prints an error message.
void writeFileJson(String filePath, Map<String, dynamic> content, {bool append = false}) {
  // Create a File object.
  final file = File(filePath);

  try {
    // Convert the Dart object to a JSON string (serialization).
    final jsonString = jsonEncode(content);
    // Write the JSON string to the file.
    file.writeAsStringSync(append ? '\n$jsonString' : jsonString, mode: append ? FileMode.append : FileMode.write);
    // Print a success message.
    print('File written successfully: $filePath');
  } on FileSystemException catch (e) {
    // If any error occurs during writing, print the error message.
    print('Error writing to file ($filePath): $e');
  } on FormatException catch (e) {
    // If any error occurs during encoding, print the error message.
    print('Error encoding JSON: $e');
  }
  // Note: Dart will automatically close the file when the function ends.
}

// --- Delete File ---

/// Deletes a file.
///
/// This function takes the file's path as input.
/// It tries to delete the file if it exists.
/// If the file is deleted successfully, it prints a success message.
/// If the file doesn't exist, it prints a "File not found" message.
/// If there's any error during deletion, it prints an error message.
void deleteFile(String filePath) {
  // Create a File object.
  final file = File(filePath);

  // Check if the file exists before trying to delete it.
  if (file.existsSync()) {
    try {
      // Delete the file.
      file.deleteSync();
      // Print a success message.
      print('File deleted successfully: $filePath');
    } on FileSystemException catch (e) {
      // If any error occurs during deletion, print the error message.
      print('Error deleting file ($filePath): $e');
    }
  } else {
    // If the file doesn't exist, print a "File not found" message.
    print('File not found: $filePath');
  }
  // Note: Dart will automatically close the file when the function ends.
}
