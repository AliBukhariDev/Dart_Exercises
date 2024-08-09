import 'package:flutter/foundation.dart';

void addedOnList(int element, int index) {
  List<int> list = [1,2,3,4,5];
  list[index] = element;
  if (kDebugMode) {
    print(list);
  }
}

void main() {
  addedOnList(5, 3);
}
