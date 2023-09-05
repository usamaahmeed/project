import 'accountant.dart';
import 'employee.dart';
import 'manager.dart';
import 'team.dart';

class Company {
  String name;
  String address;
  String phone;
  int account;
  Manager manager;
  Accountant accountant;
  List<Team>? listOfTeams = [];
  List<Employee>? listOfEmployee = [];

  Company(this.name, this.address, this.phone, this.account, this.manager,
      this.accountant);
  bool isEmployeeExist(Employee employee) {
    return listOfEmployee!.contains(employee);
  }

  @override
  String toString() {
    return "Company Name: $name\n"
        "Address: $address\n"
        "Phone: $phone\n"
        "Account: $account\n"
        "Manager: ${manager.name}\n"
        "Accountant: ${accountant.name}";
  }
}
