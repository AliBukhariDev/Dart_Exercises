void retrieveFromList(String id) {
  List list = [
    {'id': '1617', 'color': 'Red'},
    {'id': '06272', 'color': 'Maroon'},
    {'id': '72828', 'color': 'Yellow'},
    {'id': '808000', 'color': 'Olive'}
  ] as List;
  list.removeWhere((item) {
    if (item['id'] == id) {
      return true;
    }
    return false;
  });
  print(list);
}

void main() {
  retrieveFromList('808000');
}
