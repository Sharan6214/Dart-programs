import 'dart:io';

void main() {
  // Ask the user for their name
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();

  // Ask the user for their age
  stdout.write('Enter your age: ');
  String? ageInput = stdin.readLineSync();

  if (name == null || name.isEmpty) {
    print('Invalid name input.');
    return;
  }

  if (ageInput == null || ageInput.isEmpty) {
    print('Invalid age input.');
    return;
  }

  int age = int.parse(ageInput);

  // Calculate the years left to be 100
  int yearsTo100 = 100 - age;

  // Print the message
  if (yearsTo100 > 0) {
    print('$name, you have $yearsTo100 years left until you turn 100 years old.');
  } else if (yearsTo100 == 0) {
    print('$name, you are 100 years old this year!');
  } else {
    print('$name, you have already turned 100 years old.');
  }
}
