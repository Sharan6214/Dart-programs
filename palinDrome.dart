import 'dart:io';

void main() {
  // Prompt the user to enter a number
  print('Enter a number:');
  
  // Read the number from the console
  String? inputString = stdin.readLineSync();
  
  // Check if the input is not null and not empty
  if (inputString != null && inputString.isNotEmpty) {
    // Check if the input is a valid number
    if (int.tryParse(inputString) != null) {
      // Reverse the string
      String reversedString = inputString.split('').reversed.join('');
      
      // Check if the original string is equal to the reversed string
      if (inputString == reversedString) {
        print('The number $inputString is a palindrome.');
      } else {
        print('The number $inputString is not a palindrome.');
      }
    } else {
      print('Invalid input. Please enter a valid number.');
    }
  } else {
    print('No input received.');
  }
}
