void main() {
  List<String> names = createNamesList();
  printNames(names);
}

List<String> createNamesList() {
  List<String> names = ['Shardhay', 'Navin', 'Samyog', 'Bishal'];
  return names;
}

void printNames(List<String> names) {
  for (String name in names) {
    print(name);
  }
}
