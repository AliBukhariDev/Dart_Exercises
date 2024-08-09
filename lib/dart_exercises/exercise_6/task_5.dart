List<int> deleteDataInTable(Map<String, dynamic> input) {
  List<int> removedYears = [];

  var listE = input['C']['D']['E'] as List;
  listE.removeWhere((item) {
    if (item['year'] < 10) {
      removedYears.add(item['year']);
      return true;
    }
    return false;
  });
  print(input['C']['D']['E']);
  return removedYears;
}

void main() {
  Map<String, dynamic> input = {
    'A': 1231,
    'B': 0,
    'C': {
      'D': {
        'E': [
          {'id': 1, 'city': 'A', 'year': 10},
          {'id': 2, 'city': 'B', 'year': 2},
          {'id': 3, 'city': 'C', 'year': 12},
          {'id': 4, 'city': 'D', 'year': 5},
          {'id': 5, 'city': 'E', 'year': 14},
          {'id': 6, 'city': 'F', 'year': 4},
          {'id': 7, 'city': 'G', 'year': 3},
          {'id': 8, 'city': 'H', 'year': 14},
          {'id': 9, 'city': 'I', 'year': 7},
          {'id': 10, 'city': 'J', 'year': 22},
          {'id': 11, 'city': 'K', 'year': 4},
          {'id': 12, 'city': 'L', 'year': 6},
          {'id': 13, 'city': 'M', 'year': 15},
          {'id': 14, 'city': 'N', 'year': 16},
          {'id': 15, 'city': 'O', 'year': 1}
        ]
      }
    }
  };

  print(deleteDataInTable(input));
}
