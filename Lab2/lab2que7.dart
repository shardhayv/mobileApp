void main() {
  Map<String, String> contacts = createContactsMap();
  Iterable<String> keysWithLength4 =
      contacts.keys.where((key) => key.length == 4);
  print('Keys with length 4: $keysWithLength4');
}

Map<String, String> createContactsMap() {
  Map<String, String> contacts = {
    'Alice': '123-4567',
    'Bob': '234-5678',
    'Charlie': '345-6789',
    'Dave': '456-7890',
    'Eve': '567-8901',
  };
  return contacts;
}
