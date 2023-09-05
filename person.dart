abstract class Person {
  String name;
  String phone;
  String address;
  int age;
  final int _id;
  final int _salary;

  Person({
    required this.name,
    required this.phone,
    required this.address,
    required this.age,
    required int id,
    required int salary,
  })  : _id = id,
        _salary = salary;

  get getId {
    return _id;
  }

  get getSalary {
    return _salary;
  }
}
