import 'dart:io';

void main() {
  // Prompt the user to enter a number
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  // Check if the input is not null and can be parsed to an int
  if (input != null) {
    int? number = int.tryParse(input);

    if (number != null) {
      // Check if the number is prime
      bool isPrime = checkPrime(number);

      // Print the result
      if (isPrime) {
        print('$number is a prime number.');
      } else {
        print('$number is not a prime number.');
      }
    } else {
      print('Invalid input. Please enter a valid integer.');
    }
  } else {
    print('Invalid input. Please enter a valid integer.');
  }
}

bool checkPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
