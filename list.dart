void main() {
  List<int> values = [
    1,
    2,
    2,
    2,
    3,
    5,
    3,
  ];
  int total = 0;
  for (int i = 0; i < values.length; i++) {
    // print('Item ${values[i]} at ${i} ');
    total += values[i];
    print('${values[i]}');
  }
  for (var items in values) {
    print(items);
  }
  print(total);
}
