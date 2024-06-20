import 'dart:io';

void main() {
  // Prompt the user to enter a binary number
  stdout.write('Enter a binary number: ');
  String? input = stdin.readLineSync();

  // Check if the input is not null
  if (input != null) {
    // Validate if the input is a binary number
    if (RegExp(r'^[01]+$').hasMatch(input)) {
      // Convert binary to decimal
      int decimal = int.parse(input, radix: 2);

      // Print the result
      print('$input in binary is equal to $decimal in decimal');
    } else {
      print('Invalid input. Please enter a valid binary number.');
    }
  } else {
    print('Invalid input. Please enter a valid binary number.');
  }
}
