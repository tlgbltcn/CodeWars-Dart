
main() {
  print(positiveSum([1, 2, 3, 4, -6]));
}

int positiveSum(List<int> arr) => arr
    .where((element) => !element.isNegative)
    .fold(0, (previousValue, element) => element + previousValue);


