import 'dart:io';

void main() {
  print('Enter the number of length of table: ');
  String? input = stdin.readLineSync(); // nullable variable

  if (input != null) {
    int? limit = int.tryParse(input); // nullable variable

    if (limit != null) {
      generateMultiplicationTable(limit);
    } else {
      print("Invalid input: '${input}' is not a valid integer");
    }
  } else {
    print("Input is null");
  }
}

void generateMultiplicationTable(int limit) {
  for (int i = 1; i <= limit; i++) {
    int product = 5 * i;
    print("5 x $i = $product");
  }
}
