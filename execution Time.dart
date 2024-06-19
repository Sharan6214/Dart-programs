import 'dart:io';

void main() {
  // Create a Stopwatch instance
  Stopwatch stopwatch = Stopwatch();

  // Ask the user for the number of iterations
  stdout.write('Enter the number of iterations: ');
  String? iterationsInput = stdin.readLineSync();

  if (iterationsInput == null || iterationsInput.isEmpty) {
    print('Invalid input.');
    return;
  }

  int iterations = int.parse(iterationsInput);

  // Start the stopwatch before the method execution
  stopwatch.start();

  // Call the method you want to measure
  performTask(iterations);

  // Stop the stopwatch after the method execution
  stopwatch.stop();

  // Print the elapsed time
  print('Execution time: ${stopwatch.elapsedMilliseconds} ms');
}

void performTask(int iterations) {
  // Example method to measure execution time
  // This method just performs a simple task for a given number of iterations
  int sum = 0;
  for (int i = 0; i < iterations; i++) {
    sum += i;
  }
  print('Sum: $sum');
}
