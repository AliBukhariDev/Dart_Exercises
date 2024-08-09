import 'package:flutter/foundation.dart';

List<int> evenList(List<int> numbs) {
  List<int> evenNumbs = [];
  for (int i = 0; i < numbs.length; i++) {
    if (isEven(numbs[i])) {
      evenNumbs.add(numbs[i]);
    }
  }
  return evenNumbs;
}

bool isEven(int num) {
  if (num % 2 == 0) return true;
  return false;
}

void main() {
  List<int> numbs = [5, 4, 19, 20, 6, 7, 8, 9, 25, 24, 13, 12];
  if (kDebugMode) {
    print(evenList(numbs));
  }
}
