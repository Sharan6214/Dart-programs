import 'dart:io';

void main() {
  // Ask the user for a list of integers
  stdout.write('Enter a list of integers separated by spaces: ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Invalid input.');
    return;
  }

  // Convert the input string to a list of integers
  List<int> numbers = input.split(' ').map(int.parse).toList();

  if (numbers.isEmpty) {
    print('The list is empty.');
    return;
  }

  // Find the minimum value in the list
  int minValue = findMinValue(numbers);
  
  // Print the minimum value
  print('The minimum value in the list is: $minValue');
}

int findMinValue(List<int> numbers) {
  int minValue = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < minValue) {
      minValue = numbers[i];
    }
  }

  return minValue;
}
