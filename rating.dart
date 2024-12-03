// Exercise: Restaurant ratings with classes
// Given the following class:

// class Restaurant {
//   const Restaurant({
//     required this.name,
//     required this.cuisine,
//     required this.ratings,
//   });
//   final String name;
//   final String cuisine;
//   final List<double> ratings;
// }
// Add some new functionality to this class so that it can be used to:

// get the total number of ratings
// calculate the average rating (use a for loop)
// Create new getter variables or methods depending on what you feel is most appropriate.

// NOTE: Use Dartpad with Null Safety to complete this exercise.

void main() {
  Resturant resturant =
      Resturant(name: 'momo house', cuisine: 'local', rating: [4.5, 5, 2]);
  resturant.total();
  resturant.getavg();
}

class Resturant {
  final String name;
  final String cuisine;
  final List<double> rating;

  const Resturant(
      {required this.name, required this.cuisine, required this.rating});

  double? getavg() {
    double sum = 0;
    if (rating.length != 0) {
      for (var i = 0; i < rating.length; i++) {
        sum += rating[i];
      }
      double avg = sum / rating.length;
      print('The average rating is $avg');
    }
    return 0;
  }

  int total() {
    int tt = rating.length;
    print('There are total of $tt rating');

    return tt;
  }
}
