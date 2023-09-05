import 'company.dart';
import 'employee.dart';

class Accountant extends Employee {
  Accountant(
    super.id,
    super.salary, {
    required super.address,
    required super.age,
    required super.name,
    required super.phone,
  });

  int calculateSalary(Employee employee, Company company) {
    if (company.listOfEmployee!.contains(employee)) {
      if (employee.hoursWork == 200) {
        return (employee.getSalary);
      } else if (employee.hoursWork > 200) {
        final int extraHours = employee.hoursWork - 200;
        return (employee.getSalary + (extraHours * 10));
      } else {
        final int lessHours = 200 - employee.hoursWork;
        return (employee.getSalary - (lessHours * 10));
      }
    } else {
      return 0;
    }
  }

  bool sendSalary(Employee employee) {
    if (employee.takeSalaryIsDone) {
      print("Salary for ${employee.name} is sent.");
      return true;
    } else {
      return false;
    }
  }

  void addBonusEmployee(int bonus, Employee employee, Company company) {
    setSalaryForEmployee(bonus, employee, company);
  }

  void minusFromEmployee(int minus, Employee employee, Company company) {
    if (minus > 0) {
      print("minus must be a negative value");
      return;
    }

    setSalaryForEmployee(minus, employee, company);
  }
}
