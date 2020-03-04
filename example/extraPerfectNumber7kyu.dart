List<int> extraPerfect(int number) {
  List<int> list = List<int>();
  for (var i = 1; i <= number; i++) {
    var binary = i.toRadixString(2);
    if (binary.startsWith('1') == binary.endsWith('1')) {
      list.add(i);
    }
  }
  return list;
}

List<int> _extraPerfect(n) =>
    List.generate((n / 2).round(), (i) => (i * 2) + 1);

main() {
  extraPerfect(7).forEach((f) => print(f));
  _extraPerfect(7).forEach((f) => print(f));
}
