void main() {
  Map<String, dynamic> person = createPersonMap();
  person['country'] = 'Other Country';
  printPersonMap(person);
}

Map<String, dynamic> createPersonMap() {
  Map<String, dynamic> person = {
    'name': 'Alice',
    'address': '123 Main St',
    'age': 30,
    'country': 'USA'
  };
  return person;
}

void printPersonMap(Map<String, dynamic> person) {
  for (var key in person.keys) {
    print('$key: ${person[key]}');
  }
}
