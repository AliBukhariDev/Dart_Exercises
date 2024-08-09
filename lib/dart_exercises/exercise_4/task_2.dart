bool reverseString(String number) {
  StringBuffer reverseStr = StringBuffer();
  for (int i = number.length - 1; i >= 0; i--) {
    reverseStr.write(number[i]);
  }
  return int.parse(reverseStr.toString()) > int.parse(number) ? true : false;
}

void main() {
  String number = '38';
  print(reverseString(number));
}
