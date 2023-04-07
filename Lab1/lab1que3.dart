import 'dart:io';

void main() {
  print('Enter the number : ');
  String? input = stdin.readLineSync(); // nullable variable

  if (input != null) {
    double? number = double.tryParse(input); // nullable variable

    if (number != null) {
      print("${number} is ${checkSign(number)}");
    } else {
      print("Invalid input: '${input}' is not a number");
    }
  } else {
    print("Input is null");
  }
}

String checkSign(double number) {
  if (number > 0) {
    return "positive";
  } else if (number < 0) {
    return "negative";
  } else {
    return "zero";
  }
}
