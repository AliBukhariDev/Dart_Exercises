import 'package:flutter/foundation.dart';

void smallestIntegerUsingSorting(var list) {
  list.sort();
  if (kDebugMode) {
    print(list[0]);
  }
}

void smallestIntegerUsingLoop(var list) {
  int smallest = list[0];
  for (int i = 0; i < list.length-1; i++) {
    if (list[i + 1] < list[i]) {
      smallest = list[i + 1];
    } else if (list[i + 1] > list[i]) {
      smallest = list[i];
    }
  }
  if (kDebugMode) {
    print(smallest);
  }
}

void main() {
  var list = [5, 4, 3, 3, 3];
 // smallestIntegerUsingSorting(list);
  smallestIntegerUsingLoop(list);
}
