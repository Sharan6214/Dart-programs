import 'dart:io';

void main() {
  // Prompt the user to enter their first name
  stdout.write('Enter your first name: ');
  String? firstName = stdin.readLineSync();

  // Prompt the user to enter their last name
  stdout.write('Enter your last name: ');
  String? lastName = stdin.readLineSync();

  // Check if both first name and last name are not null
  if (firstName != null && lastName != null) {
    // Print the names in reverse order
    print('Reversed order: $lastName $firstName');
  } else {
    print('Invalid input. Please enter both your first and last name.');
  }
}
