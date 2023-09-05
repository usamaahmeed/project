import 'employee.dart';

class BackendDeveloper extends Employee {
  bool canUseLaravel;
  bool canUseExpressJs;
  bool canUseBloc;
  BackendDeveloper(
    super.id,
    super.salary, {
    required super.name,
    required super.phone,
    required super.address,
    required super.age,
    required this.canUseBloc,
    required this.canUseLaravel,
    required this.canUseExpressJs,
  });
  @override
  String toString() {
    return 'Person { name: $name, phone: $phone, address: $address, age: $age, id: $getId, salary: $getSalary, can use bloc: $canUseBloc, can use laravel: $canUseLaravel , can use expressJs: $canUseExpressJs }';
  }
}
