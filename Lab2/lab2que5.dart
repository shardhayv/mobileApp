void main() {
  List<String> friends = addFriendNamesToList();
  List<String> namesStartingWithA = findNamesStartingWithA(friends);
  print('Names starting with "a": $namesStartingWithA');
}

List<String> addFriendNamesToList() {
  List<String> friends = [];
  friends.add('Aman');
  friends.add('Navin');
  friends.add('Bishal');
  friends.add('Samyog');
  friends.add('Adarsh');
  friends.add('Anand');
  friends.add('Shardhay');
  return friends;
}

List<String> findNamesStartingWithA(List<String> names) {
  return names.where((name) => name.startsWith('A')).toList();
}
