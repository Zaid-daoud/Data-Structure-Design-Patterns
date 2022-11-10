void main() {
  print(Singleton1().name());
  print(Singleton2.instance.name());
  print(Singleton3.instance.name());
}

/// factory constructor
class Singleton1 {
  static final Singleton1 _instance = Singleton1._internal();
  factory Singleton1() {
    return _instance;
  }
  Singleton1._internal();
  String name() {
    return "Singleton1";
  }
}

/// static field
class Singleton2 {
  static final Singleton2 instance = Singleton2._internal();
  Singleton2._internal();
  String name() {
    return "Singleton2";
  }
}

/// static field with getter
class Singleton3 {
  static final Singleton3 _instance = Singleton3._internal();
  static Singleton3 get instance => _instance;
  Singleton3._internal();
  String name() {
    return "Singleton3";
  }
}
