void findingFactors(List<int> numbers) {
  List<int> factorsOfThree = [];
  List<int> factorsOfSeven = [];
  List<int> factorsOfThirteen = [];
  for (int i = 0; i < numbers.length; i++) {
    if (3 % numbers[i] == 0) {
      factorsOfThree.add(numbers[i]);
    }
    if (7 % numbers[i] == 0) {
      factorsOfSeven.add(numbers[i]);
    }
    if (13 % numbers[i] == 0) {
      factorsOfThirteen.add(numbers[i]);
    }
  }
  print(factorsOfThree);
  print(factorsOfSeven);
  print(factorsOfThirteen);
}

void main() {
  List<int> numbers = [5, 7, 13, 14, 8, 9, 32, 5, 4, 15, 12, 19, 14, 20,3,1];
  findingFactors(numbers);
}
