import 'dart:io';
import 'dart:math';

void main() {
  // Generate a random number between 1 and 100
  var random = Random();
  int targetNumber = random.nextInt(100) + 1;

  int? guess;

  print('I have generated a random number between 1 and 100.');
  print('Can you guess the number?');

  // Loop until the user guesses the correct number
  while (guess != targetNumber) {
    // Prompt the user to enter a guess
    stdout.write('Enter your guess: ');
    String? input = stdin.readLineSync();

    // Check if the input is not null and can be parsed to an int
    if (input != null) {
      guess = int.tryParse(input);

      if (guess != null) {
        if (guess < targetNumber) {
          print('Too low! Try again.');
        } else if (guess > targetNumber) {
          print('Too high! Try again.');
        } else {
          print('Congratulations! You guessed the number.');
        }
      } else {
        print('Invalid input. Please enter a valid integer.');
      }
    } else {
      print('Invalid input. Please enter a valid integer.');
    }
  }
}
