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
      // If the number has only one digit, no swap is needed
      if (inputString.length == 1) {
        print('Number after swapping: $inputString');
      } else {
        // Extract the first and last digits
        String firstDigit = inputString[0];
        String lastDigit = inputString[inputString.length - 1];

        // Form the new number by swapping the first and last digits
        String middlePart = inputString.substring(1, inputString.length - 1);
        String swappedNumber = lastDigit + middlePart + firstDigit;

        // Print the result
        print('Number after swapping: $swappedNumber');
      }
    } else {
      print('Invalid input. Please enter a valid number.');
    }
  } else {
    print('No input received.');
  }
}
