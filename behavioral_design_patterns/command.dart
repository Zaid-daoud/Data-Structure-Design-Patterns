void main() {
  DatabaseTable taskTable = DatabaseTable();
  IActionListener delete = DeleteAction(taskTable);
  delete.execute();
}

abstract class IActionListener {
  void execute();
}

class DatabaseTable {
  void insert() {
    print("inserting...");
  }

  void delete() {
    print("deleting...");
  }

  void update() {
    print("updating...");
  }
}

class DeleteAction implements IActionListener {
  DatabaseTable table;
  DeleteAction(this.table);
  @override
  void execute() {
    table.delete();
  }
}

class InsertAction implements IActionListener {
  DatabaseTable table;
  InsertAction(this.table);
  @override
  void execute() {
    table.insert();
  }
}

class UpdateAction implements IActionListener {
  DatabaseTable table;
  UpdateAction(this.table);
  @override
  void execute() {
    table.update();
  }
}
