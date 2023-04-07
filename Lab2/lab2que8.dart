import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('Enter a command (add, remove, view, or exit):');
    String command = stdin.readLineSync()!.trim().toLowerCase();

    if (command == 'add') {
      print('Enter a task:');
      String task = stdin.readLineSync()!.trim();
      tasks.add(task);
      print('Task added.');
    } else if (command == 'remove') {
      print('Enter the number of the task to remove:');
      int index = int.parse(stdin.readLineSync()!.trim());
      if (index >= 1 && index <= tasks.length) {
        String task = tasks.removeAt(index - 1);
        print('Task "$task" removed.');
      } else {
        print('Invalid task number.');
      }
    } else if (command == 'view') {
      if (tasks.isEmpty) {
        print('No tasks.');
      } else {
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
      }
    } else if (command == 'exit') {
      break;
    } else {
      print('Invalid command.');
    }
  }
}
