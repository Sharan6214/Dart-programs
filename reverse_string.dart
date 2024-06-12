import 'dart:io';

void main() {
  
  print('Enter a number:');
  

  String? inputString = stdin.readLineSync();
 
  if (inputString != null && inputString.isNotEmpty) {
  
    if (int.tryParse(inputString) != null) {
     
      String reversedString = inputString.split('').reversed.join('');
      
      
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
