

List<Map<String, Map<String, int>>> makeNestedLists(List<String> list1, List<String> list2, List<int> list3) {
  List<Map<String, Map<String, int>>> finalList = [];
  for (int i = 0; i < list1.length; i++) {
    finalList.add({
      list1[i]: {list2[i]: list3[i]}
    });
  }
  return finalList;
}

void main() {
  List<String> list1 = ['8201', '722', '3782', '527'];
  List<String> list2 = ['Adrk', 'ton Mh', 'Uhu Boe', 'ms'];
  List<int> list3 = [8, 9, 7, 6];
  print(makeNestedLists(list1, list2, list3));
}
