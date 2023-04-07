import 'dart:io';

void main() {
  print('Enter the number : ');
  String? input = stdin.readLineSync(); // nullable variable

  if (input != null) {
    int? limit = int.tryParse(input); // nullable variable

    if (limit != null) {
      int sum = calculateSum(limit);
      print("The sum of natural numbers up to $limit is $sum");
    } else {
      print("Invalid input: '${input}' is not a valid integer");
    }
  } else {
    print("Input is null");
  }
}

int calculateSum(int limit) {
  int sum = 0;
  for (int i = 1; i <= limit; i++) {
    sum += i;
  }
  return sum;
}
