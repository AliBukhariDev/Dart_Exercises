void checkNumber(int number) {
  if (number % 3 == 0 && number % 5 == 0) {
    print('foobar');
    return;
  } else if (number % 3 == 0) {
    print('foo');
    return;
  } else if (number % 5 == 0) {
    print('bar');
    return;
  } else {
    print('no match');
    return;
  }
}

void main() {
  checkNumber(10);
}
