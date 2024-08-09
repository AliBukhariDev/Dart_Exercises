void multiplyList(List<List<int>> list, int number) {
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list[i].length; j++) {
      list[i][j] *= number;
    }
  }
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
}

void main() {
  List<List<int>> intArr = [
    [1, 2],
    [3, 4],
    [5, 6]
  ];

  multiplyList(intArr, 2);
}
