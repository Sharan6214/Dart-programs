import 'dart:io';

void main() {
  // Ask the user for the first number
  stdout.write('Enter the first number: ');
  String? firstNumberInput = stdin.readLineSync();

  // Ask the user for the second number
  stdout.write('Enter the second number: ');
  String? secondNumberInput = stdin.readLineSync();

  if (firstNumberInput == null || firstNumberInput.isEmpty || secondNumberInput == null || secondNumberInput.isEmpty) {
    print('Invalid input.');
    return;
  }

  double firstNumber = double.parse(firstNumberInput);
  double secondNumber = double.parse(secondNumberInput);

  // Perform basic arithmetic operations
  double addition = firstNumber + secondNumber;
  double subtraction = firstNumber - secondNumber;
  double multiplication = firstNumber * secondNumber;
  double division = secondNumber != 0 ? firstNumber / secondNumber : double.nan;

  // Print the results
  print('Addition: $firstNumber + $secondNumber = $addition');
  print('Subtraction: $firstNumber - $secondNumber = $subtraction');
  print('Multiplication: $firstNumber * $secondNumber = $multiplication');
  if (secondNumber != 0) {
    print('Division: $firstNumber / $secondNumber = $division');
  } else {
    print('Division: Division by zero is not allowed.');
  }
}
