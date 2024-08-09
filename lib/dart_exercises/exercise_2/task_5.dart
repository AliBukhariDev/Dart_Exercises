import 'package:flutter/foundation.dart';

bool compareList(List<int> firstList, List<int> secondList) {
  int count = 0;
  for (int i = 0; i < firstList.length; i++) {
    if (firstList[i] != secondList[i]) {
      count++;
    }
  }
  return count == 0 ? true : false;
}

List<int> listSorting(List<int> sortedList) {
  int temp = 0;
  for (int i = 0; i < sortedList.length; i++) {
    for (int j = 1; j < (sortedList.length - i); j++) {
      if (sortedList[j - 1] > sortedList[j]) {
        temp = sortedList[j - 1];
        sortedList[j - 1] = sortedList[j];
        sortedList[j] = temp;
      }
    }
  }
  return sortedList;
}

void main() {
  List<int> firstList = [3, 2, 4, 5, 9, 7];
  List<int> secondList = [2, 3, 4, 5, 7, 9];
  if (kDebugMode) {
    print(compareList(firstList, secondList));
  }
}
