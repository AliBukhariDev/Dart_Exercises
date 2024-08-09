void checkString(String input) {
  List<String> vowels = [];
  List<String> consonants = [];
  for (int i = 0; i < input.length; i++) {
    if (checkVowels(input[i])) {
      vowels.add(input[i]);
    } else if (checkConsonants(input[i])) {
      consonants.add(input[i]);
    }
  }
  print(vowels);
  print(consonants);
}

bool checkVowels(String input) {
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  for (int i = 0; i < vowels.length; i++) {
    if (input == vowels[i]) {
      return true;
    }
  }
  return false;
}

bool checkConsonants(String input) {
  List<String> vowels = [
    'b',
    'c',
    'd',
    'f',
    'g',
    'h',
    'j',
    'k',
    'l',
    'm',
    'n',
    'p',
    'q',
    'r',
    's',
    't',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];
  for (int i = 0; i < vowels.length; i++) {
    if (input == vowels[i]) {
      return true;
    }
  }
  return false;
}

void main() {
  String input = 'abxdvgheouwxy';
  checkString(input);
}
