import 'dart:io';

void main() {
  // Prompt the user to enter the number of feet
  stdout.write('Enter the number of feet: ');
  String? input = stdin.readLineSync();

  // Check if the input is not null and can be parsed to a double
  if (input != null) {
    double? feet = double.tryParse(input);

    if (feet != null) {
      // Convert feet to meters (1 foot = 0.3048 meters)
      double meters = feet * 0.3048;

      // Print the result
      print('$feet feet is equal to $meters meters');
    } else {
      print('Invalid input. Please enter a valid number.');
    }
  } else {
    print('Invalid input. Please enter a valid number.');
  }
}
