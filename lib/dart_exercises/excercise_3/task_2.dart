void swapVariables(int numb1, int numb2) {
  int temp = 0;
  temp = numb1;
  numb1 = numb2;
  numb2 = temp;
  print(numb1);
  print(numb2);
}

void main() {
  swapVariables(5, 10);
}
