import 'employee.dart';

class FlutterDeveloper extends Employee {
  bool canUseCleanArc;
  bool canUseFirebase;
  bool canUseBloc;
  FlutterDeveloper(
    super._id,
    super._salary, {
    required super.name,
    required super.phone,
    required super.address,
    required super.age,
    required this.canUseBloc,
    required this.canUseCleanArc,
    required this.canUseFirebase,
  });
  @override
  String toString() {
    return 'Person { name: $name, phone: $phone, address: $address, age: $age, id: $getId, salary: $getSalary, can use bloc: $canUseBloc, can use clean arc: $canUseCleanArc , can use firebase: $canUseFirebase  }';
  }
}
