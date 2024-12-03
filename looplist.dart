void main() {
  List<int> lst = [1, 3, 5];
  lst.addAll([7, 9]);
  int total = 0;

  // for (int i = 0; i < lst.length; i++) {
  //   total += lst[i];
  // }
  // print(total);
  int i = 0;
  // do {
  //   total += lst[i];
  //   i++;
  // } while (i < lst.length);
  // print(total);

  while (i < lst.length) {
    total += lst[i];
    i++;
  }
  print(total);
}
