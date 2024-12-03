import 'dart:io';

void main() {
  print("Give your netsalary");

  int? netSalary = int.parse(stdin.readLineSync() ?? '0');

  print("Give your monthly expenses");

  int? expenses = int.parse(stdin.readLineSync() ?? '0');

  int save = netSalary - expenses;
  int lost = expenses - netSalary;

  if (netSalary > expenses) {
    print('you have saved $save this month');
  } else if (expenses > netSalary) {
    print('you have lost $lost this month');
  } else {
    print('your expenses are equal to your net salary');
  }
}
