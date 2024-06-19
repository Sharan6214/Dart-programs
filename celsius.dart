import 'dart:io';

void main() {
  // Prompt the user to enter the temperature in Fahrenheit
  stdout.write('Enter the temperature in Fahrenheit: ');
  String? input = stdin.readLineSync();

  // Check if the input is not null and can be parsed to a double
  if (input != null) {
    double? fahrenheit = double.tryParse(input);

    if (fahrenheit != null) {
      // Convert Fahrenheit to Celsius
      double celsius = (fahrenheit - 32) * 5 / 9;

      // Print the result
      print('$fahrenheit degrees Fahrenheit is equal to $celsius degrees Celsius');
    } else {
      print('Invalid input. Please enter a valid number.');
    }
  } else {
    print('Invalid input. Please enter a valid number.');
  }
}
