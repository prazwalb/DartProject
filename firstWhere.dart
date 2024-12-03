//  Implement the firstWhere function
// Implement a firstWhere function that takes three arguments:

// A list of items
// A function argument that can be used to find an item in the list by evaluating each item with a boolean condition
// A named function argument orElse that is used to return a given value if none of the items in the list matches the search condition
// This function should return the first item that matches the search condition, or the value returned by the orElse function if no matches are found.

// Use generics, so the firstWhere function can work on lists of any type.

// Then, use this function to find the value 5 from this list: [1, 2, 3, 4]. The function should return -1 in this case.

// Define the generic firstWhere function
T firstWhere<T>(List<T> items, bool Function(T) condition,
    {required T Function() orElse}) {
  for (T item in items) {
    if (condition(item)) {
      return item;
    }
  }
  return orElse();
}

void main() {
  // Example usage: searching for the value 5 in the list
  List<int> numbers = [1, 2, 3, 4];
  int result = firstWhere(numbers, (x) => x == 5, orElse: () => -1);

  print("Result: $result");
}
