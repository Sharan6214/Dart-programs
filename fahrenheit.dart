import 'dart:io';

void main() {
  // Prompt the user to enter the temperature in Celsius
  stdout.write('Enter the temperature in Celsius: ');
  String? input = stdin.readLineSync();

  // Check if the input is not null and can be parsed to a double
  if (input != null) {
    double? celsius = double.tryParse(input);

    if (celsius != null) {
      // Convert Celsius to Fahrenheit
      double fahrenheit = (celsius * 9/5) + 32;

      // Print the result
      print('$celsius degrees Celsius is equal to $fahrenheit degrees Fahrenheit');
    } else {
      print('Invalid input. Please enter a valid number.');
    }
  } else {
    print('Invalid input. Please enter a valid number.');
  }
}
