import 'dart:io';

void main() {
  print('Enter the character : ');
  String? input = stdin.readLineSync(); // nullable variable

  if (input != null) {
    String? character = input.trim().toLowerCase().isEmpty
        ? null
        : input.trim().toLowerCase()[0]; // nullable variable

    if (character != null) {
      if (isVowel(character)) {
        print("${character} is a vowel");
      } else {
        print("${character} is a consonant");
      }
    } else {
      print("Invalid input: '${input}' is not a valid character");
    }
  } else {
    print("Input is null");
  }
}

bool isVowel(String character) {
  return "aeiou".contains(character);
}
