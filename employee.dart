// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'company.dart';
import 'person.dart';

class Employee implements Person {
  @override
  String name;
  @override
  String phone;
  @override
  String address;
  @override
  int age;
  final int _id;
  int _salary;

  bool takeSalaryIsDone = false;
  int hoursWork = 200;
  Employee(
    this._id,
    this._salary, {
    required this.address,
    required this.age,
    required this.name,
    required this.phone,
  });

  @override
  get getId {
    return _id;
  }

  @override
  get getSalary {
    return _salary;
  }

  setSalaryForEmployee(int change, Employee employee, Company company) {
    if (company.accountant != this && company.manager != this) {
      print("you are not the accountant or the manager for ${company.name}");
    } else {
      if (!company.listOfEmployee!.contains(employee)) {
        print("This Employee does not exist in the compant");
      } else {
        employee._salary += change;
        print("salary changed succesfully");
      }
    }
  }
}
