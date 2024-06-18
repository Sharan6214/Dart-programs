import 'dart:io';

void main() {
  // Ask the user for a number
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Invalid input.');
    return;
  }

  int number = int.parse(input);

  // Check if the number is even or odd and print the appropriate message
  if (number % 2 == 0) {
    print('$number is an even number.');
  } else {
    print('$number is an odd number.');
  }
}
