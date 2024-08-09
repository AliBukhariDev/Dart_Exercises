bool checkString(String str1, String str2) {
  int count = 0;
  int result = 0;
  if (str1.length == str2.length) {
    for (int i = 0; i < str1.length; i++) {
      for (int j = 0; j < str2.length; j++) {
        if (str1[i] == str2[j]) {
          count++;
          break;
        }
      }
      if (count == 0) {
        print('hello');
        result = 1;
      }
      count = 0;
    }
  } else {
    result = 1;
  }
  return result == 1 ? false : true;
}

void main() {
  print(checkString('listen', 'silent'));
}
