import 'accountant.dart';
import 'backend.dart';
import 'company.dart';
import 'employee.dart';
import 'flutter.dart';
import 'manager.dart';
import 'project.dart';
import 'team.dart';
import 'uiux.dart';

void main() {
  final Accountant accountant = Accountant(
    25,
    3000,
    address: 'giza',
    age: 25,
    name: 'mohamed',
    phone: '0100',
  );
  Employee employee = Employee(
    541,
    2000,
    address: 'menofia',
    age: 25,
    name: 'fares',
    phone: '01066',
  );
  // Create a manager
  final Manager manager = Manager(325, 3000,
      address: 'opra', age: 30, name: 'mohamed', phone: '01065');
  // Create a Flutter developer
  final FlutterDeveloper flutterDev = FlutterDeveloper(541, 5000,
      name: 'osama',
      phone: '0106365',
      address: 'menofia',
      age: 30,
      canUseBloc: true,
      canUseCleanArc: true,
      canUseFirebase: true);

  // Create a Backend developer
  final BackendDeveloper backendDev = BackendDeveloper(210, 2000,
      name: 'kero',
      phone: '0122',
      address: 'cairo',
      age: 31,
      canUseBloc: true,
      canUseLaravel: true,
      canUseExpressJs: true);

  // Create a UI/UX developer
  final UiUxDeveloper uiUxDev = UiUxDeveloper(321, 2000,
      name: 'mona',
      phone: '0145',
      address: 'giza',
      age: 30,
      canUseAdobeXd: true,
      canUseFigma: true);

  // Create a team
  final Team team = Team();
  team.teamName = 'Development Team';
  team.teamLeader = manager;

  // Add developers to the team
  team.addEmployeeToTeam(flutterDev);
  team.addEmployeeToTeam(backendDev);
  team.addEmployeeToTeam(uiUxDev);

  // Print the names of developers in the team
  team.showNameAllDevelopers();

  // Create a project
  final Project project = Project(
      title: 'flutter',
      price: 4000,
      receivingDate: DateTime(2020, 10, 5),
      deadline: DateTime(2020, 11, 6));

  // Check if the team has the project
  if (team.projects.contains(project)) {
    print('The team has the project: ${project.title}');
  } else {
    print('The team does not have the project: ${project.title}');
  }

  // Create a company
  final Company company = Company(
      'Tech Corp', '123 Tech Ave', '555-123-4567', 100000, manager, accountant);

  // Add employees to the company
  company.listOfEmployee = [manager, flutterDev, backendDev, uiUxDev];

  // Check if an employee exists in the company
  if (company.isEmployeeExist(manager)) {
    print('${manager.name} exists in the company.');
  } else {
    print('${manager.name} does not exist in the company.');
  }

  // Calculate and send salary to an employee
  final int salary = accountant.calculateSalary(employee, company);
  print('${manager.name}\'s salary: \$$salary');
  final bool salarySent = accountant.sendSalary(manager);
  if (salarySent) {
    print('Salary sent successfully to ${manager.name}');
  } else {
    print('Failed to send salary to ${manager.name}');
  }

  // Add a bonus to an employee and print the updated salary
  accountant.addBonusEmployee(1000, flutterDev, company);
  print(
      '${flutterDev.name}\'s updated salary after the bonus: \$${flutterDev.getSalary}');

  // Deduct an amount from an employee's salary and print the updated salary
  accountant.minusFromEmployee(500, backendDev, company);
  print(
      '${backendDev.name}\'s updated salary after the deduction: \$${backendDev.getSalary}');

  // Print company information
  print(company);
}
