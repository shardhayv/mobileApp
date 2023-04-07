import 'dart:io';

void main() {
  print('Enter the name : ');
  String? input = stdin.readLineSync(); // nullable variable

  if (input != null) {
    printName100Times(input);
  } else {
    print("Input is null");
  }
}

void printName100Times(String name) {
  for (int i = 1; i <= 100; i++) {
    print("$i. $name");
  }
}
