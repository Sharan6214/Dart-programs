import 'dart:io';

void main() {
  // Ask the user for the first date
  stdout.write('Enter the first date (YYYY-MM-DD): ');
  String? firstDateInput = stdin.readLineSync();

  // Ask the user for the second date
  stdout.write('Enter the second date (YYYY-MM-DD): ');
  String? secondDateInput = stdin.readLineSync();

  if (firstDateInput == null || firstDateInput.isEmpty || secondDateInput == null || secondDateInput.isEmpty) {
    print('Invalid input.');
    return;
  }

  // Parse the input dates
  DateTime firstDate = DateTime.parse(firstDateInput);
  DateTime secondDate = DateTime.parse(secondDateInput);

  // Calculate the difference in days
  int differenceInDays = calculateDifferenceInDays(firstDate, secondDate);

  // Print the result
  print('The number of days between ${firstDate.toLocal()} and ${secondDate.toLocal()} is $differenceInDays days.');
}

int calculateDifferenceInDays(DateTime firstDate, DateTime secondDate) {
  Duration difference = secondDate.difference(firstDate);
  return difference.inDays;
}
