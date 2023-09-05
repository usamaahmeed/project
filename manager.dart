import 'employee.dart';

class Manager extends Employee {
  Manager(
    super.id,
    super.salary, {
    required super.address,
    required super.age,
    required super.name,
    required super.phone,
  });
}
