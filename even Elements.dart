void main() {
  // Original list
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  // New list to hold only the even elements
  List<int> evenElements = [];

  // Iterate through the original list and add even elements to the new list
  for (int element in a) {
    if (element % 2 == 0) {
      evenElements.add(element);
    }
  }

  // Print the new list of even elements
  print('Original list: $a');
  print('List of even elements: $evenElements');
}
