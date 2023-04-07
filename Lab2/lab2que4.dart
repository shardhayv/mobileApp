void main() {
  List<String> days = createDaysList();
  printDays(days);
}

List<String> createDaysList() {
  List<String> days = [];
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');
  return days;
}

void printDays(List<String> days) {
  for (String day in days) {
    print(day);
  }
}
