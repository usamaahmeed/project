import 'employee.dart';

class UiUxDeveloper extends Employee {
  bool canUseFigma;
  bool canUseAdobeXd;

  UiUxDeveloper(
    super.id,
    super.salary, {
    required super.name,
    required super.phone,
    required super.address,
    required super.age,
    required this.canUseAdobeXd,
    required this.canUseFigma,
  });
  @override
  String toString() {
    return 'Person { name: $name, phone: $phone, address: $address, age: $age, id: $getId, salary: $getSalary, can use adobeXd: $canUseAdobeXd, can use figma: $canUseFigma }';
  }
}
