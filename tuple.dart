import 'dart:io';

void main() {

  stdout.write('Enter a sequence of comma-separated numbers: ');
  String? input = stdin.readLineSync();

  if (input != null) {

    List<int> numberList = input.split(',').map(int.parse).toList();

    final List<int> numberTuple = List.unmodifiable(numberList);

    print('List: $numberList');
    print('Tuple: $numberTuple');
  } else {
    print('Invalid input. Please enter a valid sequence of comma-separated numbers.');
  }
}
