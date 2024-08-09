void reverse(var list, int start, int end) {
  while (start < end) {
    int temp = list[start];
    list[start] = list[end];
    list[end] = temp;
    start++;
    end--;
  }
}

void rotateArray(var list, int k, int length) {
  reverse(list, 0, k - 1);
  reverse(list, k, length - 1);
  reverse(list, 0, length - 1);
}

void main() {
  var list = [1, 2, 3, 4, 5];
  int length = list.length;
  rotateArray(list, 3, length);
  print(list);
}
