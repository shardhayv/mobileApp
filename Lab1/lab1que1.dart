import 'dart:io'; // library to take input

void main() {
  print('Enter the number : ');
  String? input = stdin.readLineSync(); // nullable variable

  if (input != null) {
    int? number = int.tryParse(input); // parsing the string into integers

    if (number != null) {
      // checking whether the input is null or not
      print(
          "${number} is ${isOddOrEven(number)}"); // calling the function and passing the input as argument
    } else {
      print(
          "Invalid input: '${input}' is not a number"); // this will be printed if the input is invalid
    }
  } else {
    print("Input is null"); // this will be printed if the input is null
  }
}

String isOddOrEven(int number) {
  if (number % 2 == 0) {
    // if the number is divisible by 2 then it should be even else odd
    return "even";
  } else {
    return "odd";
  }
}
