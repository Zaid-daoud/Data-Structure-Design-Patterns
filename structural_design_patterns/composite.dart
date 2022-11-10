void main() {
  Employee manager = Manager();
  Employee cashier = Cashier();
  manager.add(cashier);
}

abstract class Employee {
  String getFirstName();
  String getLastName();
  int getAge();
  void add(Employee employee);
}

class Manager implements Employee {
  List<Employee> employees = [];
  @override
  int getAge() {
    return 40;
  }

  @override
  String getFirstName() {
    return "M First Name";
  }

  @override
  String getLastName() {
    return "M Last Name";
  }

  @override
  void add(Employee employee) {
    employees.add(employee);
  }
}

class Cashier implements Employee {
  @override
  int getAge() {
    return 20;
  }

  @override
  String getFirstName() {
    return "C First Name";
  }

  @override
  String getLastName() {
    return "C Last Name";
  }

  @override
  void add(Employee employee) {}
}
