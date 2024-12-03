void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = ['pinapple', 'pepperoni'];

  double total = 0;
  for (final pizza in order) {
    final price = pizzaPrices[pizza];
    if (pizzaPrices.containsKey(pizza)) {
      total += price ?? 0;
    } else {
      print('$pizza pizza is not on the menu');
    }
  }

  print('Total: \$$total');
}
