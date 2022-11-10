void main() {
  Sandwich sandwich = BasicSandwich();
  print("Desc: ${sandwich.getDescription()}");
  print("Cost: ${sandwich.getCost()}");
  Sandwich beefSandwich = Beef(sandwich);
  print("Desc: ${beefSandwich.getDescription()}");
  print("Cost: ${beefSandwich.getCost()}");
  Sandwich beefWithCheeseSandwich = Cheese(Beef(sandwich));
  print("Desc: ${beefWithCheeseSandwich.getDescription()}");
  print("Cost: ${beefWithCheeseSandwich.getCost()}");
}

abstract class Sandwich {
  double getCost();
  String getDescription();
}

class BasicSandwich implements Sandwich {
  @override
  double getCost() {
    return 10;
  }

  @override
  String getDescription() {
    return "Bread";
  }
}

class SandwichDecorator implements Sandwich {
  Sandwich sandwich;
  SandwichDecorator(this.sandwich);

  @override
  double getCost() {
    return sandwich.getCost();
  }

  @override
  String getDescription() {
    return sandwich.getDescription();
  }
}

class Beef extends SandwichDecorator {
  Beef(Sandwich sandwich) : super(sandwich);

  @override
  double getCost() {
    return super.getCost() + 1;
  }

  @override
  String getDescription() {
    return super.getDescription() + ", Beef";
  }
}

class Cheese extends SandwichDecorator {
  Cheese(Sandwich sandwich) : super(sandwich);

  @override
  double getCost() {
    return super.getCost() + 0.2;
  }

  @override
  String getDescription() {
    return super.getDescription() + ", Cheese";
  }
}
