import 'dart:io';

void main() {
  // Prompt the user to enter a number
  stdout.write('Enter a number (0-99): ');
  String? input = stdin.readLineSync();

  // Check if the input is not null and can be parsed to an int
  if (input != null) {
    int? number = int.tryParse(input);

    if (number != null && number >= 0 && number <= 99) {
      // Convert number to words
      String words = numberToWords(number);

      // Print the result
      print('$number in words is "$words"');
    } else {
      print('Invalid input. Please enter a valid number between 0 and 99.');
    }
  } else {
    print('Invalid input. Please enter a valid number between 0 and 99.');
  }
}

String numberToWords(int number) {
  final List<String> units = [
    'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine',
    'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'
  ];

  final List<String> tens = [
    '', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'
  ];

  if (number < 20) {
    return units[number];
  } else {
    int tenUnit = number ~/ 10;
    int unit = number % 10;
    if (unit == 0) {
      return tens[tenUnit];
    } else {
      return '${tens[tenUnit]}-${units[unit]}';
    }
  }
}
