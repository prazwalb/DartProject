// : Pizza ordering with functions
// The following program can be used to calculate the total price when ordering pizza:

// void main() {
//   const pizzaPrices = {
//     'margherita': 5.5,
//     'pepperoni': 7.5,
//     'vegetarian': 6.5,
//   };
//   const order = ['margherita', 'pepperoni', 'pineapple'];
//   var total = 0.0;
//   for (var item in order) {
//     final price = pizzaPrices[item];
//     if (price != null) {
//       total += price;
//     }
//   }
//   print('Total: \$$total');
// }
// Modify this program so that the total calculation can be moved to a separate function that can be called multiple times with different orders.

// This function should take the order as an argument, and return the total.

void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order1 = ['margherita', 'pepperoni', 'pineapple'];
  const order2 = ['vegetarian', 'margherita'];

  final total1 = calculateTotal(pizzaPrices, order1);
  final total2 = calculateTotal(pizzaPrices, order2);

  print('Total for order 1: \$$total1');
  print('Total for order 2: \$$total2');
}

double calculate(Map<String, double> pp, List<String> order) {
  double total1 = 0.0;
  for (var item in order) {
    final price = pp[item];
    if (price != null) {
      total1 += price;
    } else {
      print('$item, Item not found in the menu');
    }
  }
  return total1;
}

double calculateTotal(Map<String, double> prices, List<String> order) {
  double total = 0.0;
  for (var item in order) {
    final price = prices[item];
    if (price != null) {
      total += price;
    } else {
      print('$item, Item not found in the menu');
    }
  }
  return total;
}
