import 'dart:io';

void main() {
  // Prompt the user to enter a decimal number
  stdout.write('Enter a decimal number: ');
  String? input = stdin.readLineSync();

  // Check if the input is not null and can be parsed to an int
  if (input != null) {
    int? decimal = int.tryParse(input);

    if (decimal != null) {
      // Convert decimal to binary
      String binary = decimal.toRadixString(2);

      // Print the result
      print('$decimal in decimal is equal to $binary in binary');
    } else {
      print('Invalid input. Please enter a valid integer.');
    }
  } else {
    print('Invalid input. Please enter a valid integer.');
  }
}
