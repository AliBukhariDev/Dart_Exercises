void main() {
  fibbonacciGen(20);
}

void fibbonacciGen(int number) {
  int t1 = 0;
  int t2 = 1;
  int nextTerm = 0;
  print(t1);
  print(t2);
  nextTerm = t1 + t2;
  while (nextTerm < number) {
    print(nextTerm);
    t1 = t2;
    t2 = nextTerm;
    nextTerm = t1 + t2;
  }
}
