void main() {
  // Define the list
  List<int> numbers = [1, 4, 3, 5, 6, 4];

  // Count the number of 4s in the list
  int countOfFours = countNumberOfFours(numbers);
  
  // Print the result
  print('The number 4 appears $countOfFours times in the list.');
}

int countNumberOfFours(List<int> numbers) {
  int count = 0;
  
  for (int number in numbers) {
    if (number == 4) {
      count++;
    }
  }
  
  return count;
}
