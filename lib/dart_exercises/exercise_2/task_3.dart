import 'package:flutter/foundation.dart';

int calculateFactorial(int number) {
  int result = 1;
  for (int i = 1; i <= number; i++) {
    result *= i;
  }
  return result;
}

void main() {
  if (kDebugMode) {
    print(calculateFactorial(6));
  }
}
