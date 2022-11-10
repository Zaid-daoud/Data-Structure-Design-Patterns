void main() {
  Controller controller = Controller();
  controller.setAccountingCon();
  controller.open();
  controller.close();
  controller.setManagementCon();
  controller.open();
  controller.close();
}

abstract class Connection {
  void open();
  void close();
}

class Accounting implements Connection {
  @override
  void close() {
    print("close for accountant");
  }

  @override
  void open() {
    print("open for accountant");
  }
}

class Management implements Connection {
  @override
  void close() {
    print("close for management");
  }

  @override
  void open() {
    print("open for management");
  }
}

class Controller {
  late Accounting accounting;
  late Management management;
  late Connection connection;
  Controller() {
    accounting = Accounting();
    management = Management();
  }

  setAccountingCon() {
    connection = accounting;
  }

  setManagementCon() {
    connection = management;
  }

  void open() {
    connection.open();
  }

  void close() {
    connection.close();
  }
}
