List<String> consecutiveSubstring(String input) {
  List<String> consecutiveSubstrings = [];
  if (input.isEmpty) {
    return consecutiveSubstrings;
  }
  StringBuffer currentSubstring = StringBuffer();
  currentSubstring.write(input[0]);
  for (int i = 1; i < input.length; i++) {
    if (input[i] == input[i - 1]) {
      currentSubstring.write(input[i]);
    } else {
      if (currentSubstring.length > 1) {
        consecutiveSubstrings.add(currentSubstring.toString());
      }
      currentSubstring.clear();
      currentSubstring.write(input[i]);
    }
  }
  if (currentSubstring.length > 1) {
    consecutiveSubstrings.add(currentSubstring.toString());
  }
  return consecutiveSubstrings;
}

void main() {
  String input = 'cabaancccnnnn';
  print(consecutiveSubstring(input));
}
