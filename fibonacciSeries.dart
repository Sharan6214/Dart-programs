import 'dart:io';

void main() {
  // Ask the user for the number of Fibonacci terms
  stdout.write('Enter the number of Fibonacci terms you want: ');
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    print('Invalid input.');
    return;
  }
  
  int n = int.parse(input);

  // Check if the input is a valid number of terms
  if (n <= 0) {
    print('Please enter a positive integer.');
    return;
  }

  // Generate and print the Fibonacci series
  List<int> fibonacciSeries = generateFibonacci(n);
  print('Fibonacci series with $n terms: $fibonacciSeries');
}

List<int> generateFibonacci(int n) {
  List<int> series = [];
  
  for (int i = 0; i < n; i++) {
    if (i == 0 || i == 1) {
      series.add(i);
    } else {
      series.add(series[i - 1] + series[i - 2]);
    }
  }
  
  return series;
}
