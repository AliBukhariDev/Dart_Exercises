import 'package:flutter/foundation.dart';

List<int> fiftyPrimeNumbers() {
  List<int> primeNos = [];
  for (int i = 2; primeNos.length != 50; i++) {
    if (isPrime(i)) {
      primeNos.add(i);
    }
  }
  return primeNos;
}

bool isPrime(int number) {
  if (number <= 1) return false; // Prime number is > 1
  for (int i = 2; i < number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

void main() {
  if (kDebugMode) {
    print(fiftyPrimeNumbers());
  }
}
