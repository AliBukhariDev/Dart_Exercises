import 'package:flutter/foundation.dart';

void main() {
  var input = 100;
  if (kDebugMode) {
    print(checkPalidrome(input));
  }
}

bool checkPalidrome(var input) {
  String str = input.toString();
  StringBuffer result = StringBuffer();
  for (int i = str.length - 1; i >= 0; i--) {
    result.write(str[i]);
  }
  return str == result.toString();
}
