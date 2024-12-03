// Exercise: Implement the where function
// Implement a where function that takes two arguments:

// A list of items
// A function argument that can be used to filter items in the list by evaluating each item with a boolean condition
// This function should return a new list, which contains the items filtered using the function argument.

// Use generics, so the where function can work on lists of any type.

// Then, use this function to retrieve all the odd numbers from this list: [1, 2, 3, 4], and print the result.

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];

  // Using our custom where function to filter odd numbers
  List<int> oddNumbers = where<int>(numbers, (number) => number % 2 != 0);
  // List<int> oddNumbers = where<int>(numbers, (number) => number.isOdd);

  // Printing the result
  print('Odd numbers: $oddNumbers');
}

// Generic where function implementation
List<T> where<T>(List<T> list, bool Function(T) condition) {
  // Create a new list to store filtered items
  List<T> filteredList = [];

  // Iterate through each item in the list
  for (T item in list) {
    // If the condition is true, add the item to the filtered list
    if (condition(item)) {
      filteredList.add(item);
    }
  }

  // Return the filtered list
  return filteredList;
}
