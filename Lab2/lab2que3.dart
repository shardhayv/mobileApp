import 'dart:io';

void main() {
  List<double> expenses = readExpensesList();
  double total = calculateTotalExpenses(expenses);
  print('Total expenses: RS ${total.toStringAsFixed(2)}');
}

List<double> readExpensesList() {
  List<double> expenses = [];

  while (true) {
    stdout.write('Enter an expense amount (or "done" to finish): ');
    String input = stdin.readLineSync()!;
    if (input.toLowerCase() == 'done') {
      break;
    }
    double expense = double.tryParse(input) ?? 0.0;
    expenses.add(expense);
  }

  return expenses;
}

double calculateTotalExpenses(List<double> expenses) {
  double total = 0.0;
  for (double expense in expenses) {
    total += expense;
  }
  return total;
}
