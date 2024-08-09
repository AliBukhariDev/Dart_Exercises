import 'package:flutter/foundation.dart';

int stringToInteger(String str) {
  int result = 1;
  for (int i = 0; i < str.length; i++) {
    result *= int.parse(str[i]);
  }
  return result;
}

void main() {
  if (kDebugMode) {
    print(stringToInteger('123'));
  }
}
