
import 'package:flutter/foundation.dart';

String reverseStringUsingLoops(String str) {
  var resultStr = StringBuffer();
  for (int i = str.length - 1; i >= 0; i--) {
    resultStr.write(str[i]);
  }
  return resultStr.toString();
}

void main() {
    if (kDebugMode) {
      print(reverseStringUsingLoops('Hello World'));
    }

}
