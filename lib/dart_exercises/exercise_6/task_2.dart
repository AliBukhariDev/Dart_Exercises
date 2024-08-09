List multiplesOfNumbers(int number1, int number2) {
  var list = [];
  for (int i = 1; i <= number2; i++) {
    list.add(number1 * i);
  }
  return list;
}

void main() {
  print(multiplesOfNumbers(7, 5));
}
