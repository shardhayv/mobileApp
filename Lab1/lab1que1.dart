import 'dart:io';

void main() {
  print('Enter the number : ');
  String? input = stdin.readLineSync(); // nullable variable

  if (input != null) {
    int? number = int.tryParse(input); // nullable variable

    if (number != null) {
      print("${number} is ${isOddOrEven(number)}");
    } else {
      print("Invalid input: '${input}' is not a number");
    }
  } else {
    print("Input is null");
  }
}

String isOddOrEven(int number) {
  if (number % 2 == 0) {
    return "even";
  } else {
    return "odd";
  }
}
