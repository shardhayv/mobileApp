void printNumbers() {
  for (int i = 1; i <= 100; i++) {
    if (i == 41) {
      continue; // skip 41
    }
    print(i);
  }
}

void main() {
  printNumbers(); // call the function
}
