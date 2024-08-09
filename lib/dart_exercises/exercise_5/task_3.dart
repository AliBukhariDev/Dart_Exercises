String longestSubstring(String input) {
  Map<String, int> frequency = {};
  String answerString = '';
  int maxLength = -1;
  for (int i = 0; i < input.length - 1; i++) {
    String start = input[i];
    if (frequency.containsKey(start)) {
      int length = (i - 1) - frequency[start]!;
      if (length > maxLength) {
        maxLength = length;
        answerString = input.substring((frequency[start]! + 1), i);
      }
    } else {
      frequency[start] = i;
    }
  }
  return answerString;
}

void main() {
  String input = 'ukmjnhbgvfcuaiopytra';
  print(longestSubstring(input));
}
