import 'dart:io';

void main() {

  stdout.write('Enter a filename: ');
  String? filename = stdin.readLineSync();

  if (filename != null && filename.contains('.')) {

    String extension = filename.split('.').last;


    print('File extension: $extension');
  } else {
    print('Invalid input. Please enter a valid filename with an extension.');
  }
}
