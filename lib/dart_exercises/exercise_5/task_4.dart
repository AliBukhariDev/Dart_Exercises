String longestSubstringBetweenConsecutiveAlphabets(String input) {
  int maxLength = -1;
  String longestSubstring = '';
  int startLength = -1;
  for (int i = 0; i < input.length - 1; i++) {
    String pair = input.substring(i, i + 2);
    if (pair[0] == pair[1]) {
      if (startLength == -1) {
        startLength = i + 2;
      } else {
        int length = i - startLength;
        if (length > maxLength) {
          maxLength = length;
          longestSubstring = input.substring(startLength, i);
          startLength = i + 2;
        }
      }
    }
  }
  return longestSubstring;
}

void main() {
  String input = 'aafghbbhkljhrtyeiobvudrftyolkiunbmm';
  print(longestSubstringBetweenConsecutiveAlphabets(input));
}
