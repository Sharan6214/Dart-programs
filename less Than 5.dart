void main() {
  // Define the list
  List<int> numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  // Print out all the elements that are less than 5
  print('Elements less than 5:');
  for (int number in numbers) {
    if (number < 5) {
      print(number);
    }
  }
}
