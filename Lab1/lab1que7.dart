import 'dart:io';

void main() {
  print('Enter the number of length of table: ');
  String? input = stdin.readLineSync(); // nullable variable

  if (input != null) {
    int? limit = int.tryParse(input); // nullable variable

    if (limit != null) {
      generateMultiplicationTables(limit);
    } else {
      print("Invalid input: '${input}' is not a valid integer");
    }
  } else {
    print("Input is null");
  }
}

void generateMultiplicationTables(int limit) {
  for (int i = 1; i <= 9; i++) {
    // loop from 1-9
    print("Multiplication table of $i:");
    for (int j = 1; j <= limit; j++) {
      // loop up to the limit
      int product = i * j;
      print("$i x $j = $product");
    }
    print(""); // print an empty line between tables
  }
}
