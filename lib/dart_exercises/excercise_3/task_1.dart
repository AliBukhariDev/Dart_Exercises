bool sumOfNumberInList(List<int> list, int result) {
  int sum = 0;
  int count = 0;
  for (int i = 0; i < list.length-1; i++) {
    for (int j = i+1; j < list.length; j++) {
      sum = list[i] + list[j];
      if (sum == result) {
        count++;
      }
    }
  }
  return count == 0 ? false : true;
}

void main() {
  List<int> list = [2, 5, 4, 8, 9, 7, 6, 9];
  int result = 100;
  print(sumOfNumberInList(list, result));
}
