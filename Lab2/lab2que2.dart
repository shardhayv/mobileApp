void main() {
  Set<String> fruits = createFruitsSet();
  printFruits(fruits);
}

Set<String> createFruitsSet() {
  Set<String> fruits = {'Apple', 'Banana', 'Mango', 'Guava'};
  return fruits;
}

void printFruits(Set<String> fruits) {
  for (String fruit in fruits) {
    print(fruit);
  }
}
