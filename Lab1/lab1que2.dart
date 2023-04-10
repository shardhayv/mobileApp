import 'dart:io';

void main() {
  print('Enter the character : ');
  String? input = stdin.readLineSync(); // nullable variable

  if (input != null) {
    String? character = input
            .trim() //trims leading and trailing whitespace from the input using the trim() method
            .toLowerCase() //converts the resulting string to lowercase using toLowerCase()
            .isEmpty //checks whether the resulting string is empty using the isEmpty property.
        ? null
        : input.trim().toLowerCase()[
            0]; //If the resulting string is not empty, the code then retrieves the first character of the string using indexing ([0]) and stores it in a nullable string variable called character.

    if (character != null) {
      //character variable is not null, the code then calls the isVowel()
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
  return "aeiou".contains(
      character); //input character is contained in the string "aeiou",
}
