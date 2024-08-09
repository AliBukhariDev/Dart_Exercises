int numberFrequency(int number) {
  List<int> numbs = [1, 2, 2, 5, 6, 9, 6, 6, 6, 6, 6, 9, 8, 4, 2, 1];
  int count = 0;
  for (int i = 0; i < numbs.length; i++) {
    if (number == numbs[i]) {
      count++;
    }
  }
  return count;
}

void main() {
  print(numberFrequency(2));
}
