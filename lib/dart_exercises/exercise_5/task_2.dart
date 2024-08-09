List retrieveFromList(String id) {
  var list = [
    {'Math': 90, 'Science': 92},
    {'Math': 89, 'Science': 94},
    {'Math': 92, 'Science': 88}
  ];
  var result = [];
  for (int i = 0; i < list.length; i++) {
    for (var key in list[i].keys) {
      if (key == id) {
        result.add(list[i][key]);
      }
    }
  }
  return result;
}

void main() {
  print(retrieveFromList('Math'));
}
