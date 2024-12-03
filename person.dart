void main() {
  final person = {'name': 'Andrea', 'age': 36, 'height': 1.84};
  print(
      "My name is ${person['name']}. I'm ${person['age']} years old, I'm ${person['height']} meters tall.");

  Person person1 = Person(name: 'prajwal', age: 23, height: 5.11);
  person1.printDescription();
}

class Person {
  final String name;
  final int age;
  final double height;

  Person({required this.name, required this.age, required this.height});

  void printDescription() {
    print("My name is $name. I'm $age years old, I'm $height meter tall");
  }
}
