/// Asynchronous Programming in Dart

/// Introduction
/// Dart, like many modern programming languages, supports asynchronous programming. This means that your code can perform tasks that might take some time (like fetching data from the internet or reading a large file) without blocking the main thread of execution. This is crucial for creating responsive and efficient applications.

/// Key Concepts

/// 1.  Asynchronous Operations:
///     - Operations that don't complete immediately.
///     - Examples: Network requests, file I/O, database queries.
/// 2.  Event Loop:
///     - Dart's mechanism for handling asynchronous operations.
///     - Manages a queue of events and executes them when the main thread is free.
/// 3.  Futures:
///     - Represents the result of an asynchronous operation that may not be available yet.
///     - Can be in one of three states: uncompleted, completed with a value, or completed with an error.
/// 4.  Async and Await:
///     - Keywords that make asynchronous code look and behave a bit more like synchronous code.
///     - `async` marks a function as asynchronous.
///     - `await` pauses execution until a Future completes.
/// 5.  Streams:
///     - Represents a sequence of asynchronous events.
///     - Useful for handling data that arrives over time (e.g., user input, sensor data).

/// --- Futures in Dart ---

/// What is a Future?
/// A `Future` in Dart represents the result of an asynchronous operation. It's like a promise that a value will be available at some point in the future.

/// Creating Futures
import 'dart:async';

void futureExamples() {
  print("\n--- Future Examples ---");
  // 1. Basic Future
  Future<String> myFuture = Future(() {
    // Simulate a time-consuming operation
    return Future.delayed(Duration(seconds: 2), () => "Data from Future");
  });

  // Handling the Future's result
  myFuture
      .then((value) {
        print("Future completed with: $value");
      })
      .catchError((error) {
        print("Future failed with: $error");
      });

  // 2. Future with Error
  Future<int> futureWithError = Future(() {
    return Future.delayed(Duration(seconds: 1), () {
      throw Exception("Something went wrong!");
    });
  });

  futureWithError
      .then((value) {
        print("Future with error completed with: $value");
      })
      .catchError((error) {
        print("Future with error failed with: $error");
      });

  // 3. Future.value
  Future<String> immediateFuture = Future.value("Immediate Value");
  immediateFuture.then((value) => print("Immediate Future: $value"));

  // 4. Future.error
  Future<void> immediateErrorFuture = Future.error("Immediate Error");
  immediateErrorFuture.catchError((error) => print("Immediate Error Future: $error"));

  // 5. Future.delayed
  Future<String> delayedFuture = Future.delayed(Duration(seconds: 3), () => "Delayed Value");
  delayedFuture.then((value) => print("Delayed Future: $value"));

  // 6. Future.wait
  Future<String> future1 = Future.delayed(Duration(seconds: 1), () => "Future 1");
  Future<String> future2 = Future.delayed(Duration(seconds: 2), () => "Future 2");
  Future<String> future3 = Future.delayed(Duration(seconds: 3), () => "Future 3");

  Future.wait([future1, future2, future3]).then((List<String> values) {
    print("All futures completed: $values");
  });

  // 7. Future.any
  Future.any([future1, future2, future3]).then((value) {
    print("Any future completed: $value");
  });

  // 8. Future.doWhile
  int counter = 0;
  Future.doWhile(() {
    counter++;
    print("doWhile: $counter");
    return Future.delayed(Duration(milliseconds: 500), () => counter < 5);
  }).then((_) => print("doWhile completed"));
}

/// --- Async and Await in Dart ---

/// What are Async and Await?
/// `async` and `await` are keywords that make working with Futures much easier.
/// - `async`: Marks a function as asynchronous. It allows you to use `await` inside the function.
/// - `await`: Pauses the execution of the current function until the Future it's waiting on completes.

/// Using Async and Await

Future<String> fetchData() async {
  // Simulate fetching data from a network
  await Future.delayed(Duration(seconds: 2));
  return "Data fetched successfully!";
}

Future<String> fetchDataWithError() async {
  // Simulate fetching data from a network
  await Future.delayed(Duration(seconds: 2));
  throw Exception("Failed to fetch data!");
}

Future<void> asyncAwaitExamples() async {
  print("\n--- Async/Await Examples ---");
  // 1. Basic Async/Await
  try {
    String data = await fetchData();
    print("Data: $data");
  } catch (e) {
    print("Error: $e");
  }

  // 2. Async/Await with Error Handling
  try {
    String data = await fetchDataWithError();
    print("Data: $data");
  } catch (e) {
    print("Error: $e");
  }

  // 3. Multiple Awaits
  print("Fetching data 1...");
  String data1 = await fetchData();
  print("Data 1: $data1");

  print("Fetching data 2...");
  String data2 = await fetchData();
  print("Data 2: $data2");

  // 4. Async/Await in a loop
  List<String> dataList = [];
  for (int i = 0; i < 3; i++) {
    print("Fetching data $i...");
    String data = await fetchData();
    dataList.add(data);
  }
  print("All data fetched: $dataList");
}

/// --- Streams in Dart ---

/// What is a Stream?
/// A `Stream` in Dart represents a sequence of asynchronous events. It's like a pipe that delivers data over time.

/// Creating Streams

void streamExamples() {
  print("\n--- Stream Examples ---");
  // 1. Basic Stream
  Stream<int> myStream = Stream.fromIterable([1, 2, 3, 4, 5]);

  // Listening to the Stream
  myStream.listen(
    (value) {
      print("Stream value: $value");
    },
    onDone: () {
      print("Stream is done");
    },
    onError: (error) {
      print("Stream error: $error");
    },
  );

  // 2. Stream.periodic
  Stream<int> periodicStream = Stream.periodic(Duration(seconds: 1), (count) => count);
  periodicStream
      .take(5)
      .listen(
        (value) {
          print("Periodic Stream value: $value");
        },
        onDone: () {
          print("Periodic Stream is done");
        },
      );

  // 3. Stream.fromFuture
  Future<String> future = Future.delayed(Duration(seconds: 2), () => "Future Value");
  Stream<String> futureStream = Stream.fromFuture(future);
  futureStream.listen(
    (value) {
      print("Future Stream value: $value");
    },
    onDone: () {
      print("Future Stream is done");
    },
  );

  // 4. Stream.fromFutures
  Future<String> future1 = Future.delayed(Duration(seconds: 1), () => "Future 1");
  Future<String> future2 = Future.delayed(Duration(seconds: 2), () => "Future 2");
  Future<String> future3 = Future.delayed(Duration(seconds: 3), () => "Future 3");
  Stream<String> futuresStream = Stream.fromFutures([future1, future2, future3]);
  futuresStream.listen(
    (value) {
      print("Futures Stream value: $value");
    },
    onDone: () {
      print("Futures Stream is done");
    },
  );

  // 5. Stream.empty
  Stream<int> emptyStream = Stream.empty();
  emptyStream.listen(
    (value) {
      print("Empty Stream value: $value");
    },
    onDone: () {
      print("Empty Stream is done");
    },
  );

  // 6. Stream.error
  Stream<int> errorStream = Stream.error("Error");
  errorStream.listen(
    (value) {
      print("Error Stream value: $value");
    },
    onDone: () {
      print("Error Stream is done");
    },
    onError: (error) {
      print("Error Stream error: $error");
    },
  );

  // 7. Stream.value
  Stream<int> valueStream = Stream.value(10);
  valueStream.listen(
    (value) {
      print("Value Stream value: $value");
    },
    onDone: () {
      print("Value Stream is done");
    },
  );

  // 8. Stream.asBroadcastStream
  Stream<int> broadcastStream = Stream.fromIterable([1, 2, 3]).asBroadcastStream();
  broadcastStream.listen((value) {
    print("Broadcast Stream 1 value: $value");
  });
  broadcastStream.listen((value) {
    print("Broadcast Stream 2 value: $value");
  });

  // 9. Stream.cast
  Stream<int> castStream = Stream.fromIterable([1, 2, 3]).cast<int>();
  castStream.listen((value) {
    print("Cast Stream value: $value");
  });

  // 10. Stream.concat
  Stream<int> stream1 = Stream.fromIterable([1, 2, 3]);
  Stream<int> stream2 = Stream.fromIterable([4, 5, 6]);
  Stream<int> concatStream = Stream.fromIterable([stream1, stream2]).asyncExpand((stream) => stream);
  concatStream.listen((value) {
    print("Concat Stream value: $value");
  });

  // 11. Stream.expand
  Stream<int> expandStream = Stream.fromIterable([1, 2, 3]).expand((value) => [value, value * 2]);
  expandStream.listen((value) {
    print("Expand Stream value: $value");
  });

  // 12. Stream.first
  Stream<int> firstStream = Stream.fromIterable([1, 2, 3]);
  firstStream.first.then((value) {
    print("First Stream value: $value");
  });

  // 13. Stream.firstWhere
  Stream<int> firstWhereStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  firstWhereStream.firstWhere((value) => value > 3).then((value) {
    print("First Where Stream value: $value");
  });

  // 14. Stream.fold
  Stream<int> foldStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  foldStream.fold(0, (previous, element) => previous + element).then((value) {
    print("Fold Stream value: $value");
  });

  // 15. Stream.forEach
  Stream<int> forEachStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  forEachStream.forEach((value) {
    print("For Each Stream value: $value");
  });

  // 16. Stream.handleError
  Stream<int> handleErrorStream = Stream.fromIterable([1, 2, 3]).map((value) {
    if (value == 2) {
      throw Exception("Error");
    }
    return value;
  });
  handleErrorStream
      .handleError((error) {
        print("Handle Error Stream error: $error");
      })
      .listen((value) {
        print("Handle Error Stream value: $value");
      });

  // 17. Stream.join
  Stream<int> joinStream = Stream.fromIterable([1, 2, 3]);
  joinStream.join(",").then((value) {
    print("Join Stream value: $value");
  });

  // 18. Stream.last
  Stream<int> lastStream = Stream.fromIterable([1, 2, 3]);
  lastStream.last.then((value) {
    print("Last Stream value: $value");
  });

  // 19. Stream.lastWhere
  Stream<int> lastWhereStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  lastWhereStream.lastWhere((value) => value < 3).then((value) {
    print("Last Where Stream value: $value");
  });

  // 20. Stream.length
  Stream<int> lengthStream = Stream.fromIterable([1, 2, 3]);
  lengthStream.length.then((value) {
    print("Length Stream value: $value");
  });

  // 21. Stream.listen
  Stream<int> listenStream = Stream.fromIterable([1, 2, 3]);
  listenStream.listen((value) {
    print("Listen Stream value: $value");
  });

  // 22. Stream.map
  Stream<int> mapStream = Stream.fromIterable([1, 2, 3]).map((value) => value * 2);
  mapStream.listen((value) {
    print("Map Stream value: $value");
  });

  // 23. Stream.pipe
  Stream<int> pipeStream = Stream.fromIterable([1, 2, 3]);
  StreamController<int> controller = StreamController<int>();
  pipeStream.pipe(controller);
  controller.stream.listen((value) {
    print("Pipe Stream value: $value");
  });

  // 24. Stream.reduce
  Stream<int> reduceStream = Stream.fromIterable([1, 2, 3]);
  reduceStream.reduce((previous, element) => previous + element).then((value) {
    print("Reduce Stream value: $value");
  });

  // 25. Stream.single
  Stream<int> singleStream = Stream.fromIterable([1]);
  singleStream.single.then((value) {
    print("Single Stream value: $value");
  });

  // 26. Stream.singleWhere
  Stream<int> singleWhereStream = Stream.fromIterable([1, 2, 3]);
  singleWhereStream.singleWhere((value) => value == 2).then((value) {
    print("Single Where Stream value: $value");
  });

  // 27. Stream.skip
  Stream<int> skipStream = Stream.fromIterable([1, 2, 3, 4, 5]).skip(2);
  skipStream.listen((value) {
    print("Skip Stream value: $value");
  });

  // 28. Stream.skipWhile
  Stream<int> skipWhileStream = Stream.fromIterable([1, 2, 3, 4, 5]).skipWhile((value) => value < 3);
  skipWhileStream.listen((value) {
    print("Skip While Stream value: $value");
  });

  // 29. Stream.take
  Stream<int> takeStream = Stream.fromIterable([1, 2, 3, 4, 5]).take(3);
  takeStream.listen((value) {
    print("Take Stream value: $value");
  });

  // 30. Stream.takeWhile
  Stream<int> takeWhileStream = Stream.fromIterable([1, 2, 3, 4, 5]).takeWhile((value) => value < 4);
  takeWhileStream.listen((value) {
    print("Take While Stream value: $value");
  });

  // 31. Stream.timeout
  Stream<int> timeoutStream = Stream.fromIterable([1, 2, 3]).timeout(Duration(seconds: 1));
  timeoutStream.listen(
    (value) {
      print("Timeout Stream value: $value");
    },
    onError: (error) {
      print("Timeout Stream error: $error");
    },
  );

  // 32. Stream.toList
  Stream<int> toListStream = Stream.fromIterable([1, 2, 3]);
  toListStream.toList().then((value) {
    print("To List Stream value: $value");
  });

  // 33. Stream.toSet
  Stream<int> toSetStream = Stream.fromIterable([1, 2, 3, 3, 2, 1]);
  toSetStream.toSet().then((value) {
    print("To Set Stream value: $value");
  });

  // 34. Stream.transform
  Stream<int> transformStream = Stream.fromIterable([1, 2, 3]).transform(
    StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        sink.add(data * 2);
      },
    ),
  );
  transformStream.listen((value) {
    print("Transform Stream value: $value");
  });

  // 35. Stream.where
  Stream<int> whereStream = Stream.fromIterable([1, 2, 3, 4, 5]).where((value) => value.isEven);
  whereStream.listen((value) {
    print("Where Stream value: $value");
  });

  // 36. Stream.distinct
  Stream<int> distinctStream = Stream.fromIterable([1, 2, 2, 3, 3, 3, 4]);
  distinctStream.distinct().listen((value) {
    print("Distinct Stream value: $value");
  });

  // 37. Stream.elementAt
  Stream<int> elementAtStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  elementAtStream.elementAt(2).then((value) {
    print("Element At Stream value: $value");
  });

  // 38. Stream.every
  Stream<int> everyStream = Stream.fromIterable([2, 4, 6, 8]);
  everyStream.every((value) => value.isEven).then((value) {
    print("Every Stream value: $value");
  });

  // 39. Stream.any
  Stream<int> anyStream = Stream.fromIterable([1, 3, 5, 7, 8]);
  anyStream.any((value) => value.isEven).then((value) {
    print("Any Stream value: $value");
  });

  // 40. Stream.contains
  Stream<int> containsStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  containsStream.contains(3).then((value) {
    print("Contains Stream value: $value");
  });

  // 41. Stream.isEmpty
  Stream<int> isEmptyStream = Stream.fromIterable([]);
  isEmptyStream.isEmpty.then((value) {
    print("Is Empty Stream value: $value");
  });

  // 42. Stream.isBroadcast
  Stream<int> isBroadcastStream = Stream.fromIterable([1, 2, 3]).asBroadcastStream();
  print("Is Broadcast Stream: ${isBroadcastStream.isBroadcast}");

  // 43. Stream.listen with pause and resume
  Stream<int> listenPauseResumeStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  StreamSubscription<int> subscription = listenPauseResumeStream.listen((value) {
    print("Listen Pause Resume Stream value: $value");
  });
  subscription.pause();
  Future.delayed(Duration(seconds: 2), () {
    subscription.resume();
  });

  // 44. Stream.takeWhile with condition
  Stream<int> takeWhileConditionStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  takeWhileConditionStream.takeWhile((value) => value < 4).listen((value) {
    print("Take While Condition Stream value: $value");
  });

  // 45. Stream.skipWhile with condition
  Stream<int> skipWhileConditionStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  skipWhileConditionStream.skipWhile((value) => value < 3).listen((value) {
    print("Skip While Condition Stream value: $value");
  });

  // 46. Stream.timeout with custom onTimeout
  Stream<int> customTimeoutStream = Stream.fromIterable([1, 2, 3]).timeout(
    Duration(seconds: 1),
    onTimeout: (sink) {
      sink.add(999); // Add a custom value on timeout
    },
  );
  customTimeoutStream.listen(
    (value) {
      print("Custom Timeout Stream value: $value");
    },
    onError: (error) {
      print("Custom Timeout Stream error: $error");
    },
  );
}
