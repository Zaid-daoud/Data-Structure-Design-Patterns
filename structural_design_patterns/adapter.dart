void main() {
  driveVehicle(CarAdapter("BMW", 12345));
  driveVehicle(BusAdapter(Bus("TOYOTA", 12345)));
}

void driveVehicle(IVehicle vehicle) {
  vehicle.drive();
}

abstract class IVehicle {
  void stop();
  void drive();
  void repair();
}

class Car {
  String name;
  int number;
  Car(this.name, this.number);
  void driveCar() {
    print("The car ${name} is being driven");
  }
}

class Bus {
  String name;
  int number;
  Bus(this.name, this.number);
  void driveBus() {
    print("The bus ${name} is being driven");
  }
}

/// first way
class CarAdapter extends Car implements IVehicle {
  CarAdapter(String name, int number) : super(name, number);

  @override
  void drive() {
    driveCar();
  }

  @override
  void repair() {
    print("The car ${name} is being repaired");
  }

  @override
  void stop() {
    print("The car ${name} is stopped");
  }
}

/// second way
class BusAdapter implements IVehicle {
  Bus bus;
  BusAdapter(this.bus);

  @override
  void drive() {
    bus.driveBus();
  }

  @override
  void repair() {
    print("The bus ${bus.name} is being repaired");
  }

  @override
  void stop() {
    print("The bus ${bus.name} is stopped");
  }
}
