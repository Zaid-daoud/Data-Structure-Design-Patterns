void main() {
  Student ahmad = Student("Ahmad");
  Student zaid = Student("Zaid");
  Student ali = Student("Ali");
  Student yazan = Student("Yazan");
  Course dart = Course("Dart Course");
  dart.subscribe(ahmad);
  dart.subscribe(zaid);
  dart.subscribe(ali);
  dart.subscribe(yazan);
  dart.setAvilability(true);
  dart.unsubscribe(ahmad);
  print("\n");
  dart.setAvilability(false);
}

class Course implements Subject {
  String name;
  bool _available = true;
  List<Observer> _observers = [];
  Course(this.name);

  @override
  void notifyAllSubscribers() {
    for (var observer in _observers) {
      observer.update(_available);
    }
  }

  @override
  void subscribe(Observer observer) {
    _observers.add(observer);
  }

  @override
  void unsubscribe(Observer observer) {
    _observers.remove(observer);
  }

  void setAvilability(bool value) {
    _available = value;
    notifyAllSubscribers();
  }
}

class Student implements Observer {
  String name;
  Student(this.name);

  @override
  void update(bool available) {
    print("availability : $available");
  }
}

abstract class Subject {
  void subscribe(Observer observer);
  void unsubscribe(Observer observer);
  void notifyAllSubscribers();
}

abstract class Observer {
  void update(bool available);
}
