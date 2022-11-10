void main() {
  McDonalds mcDonalds = McDonalds(ChickenMacBuilder());
  mcDonalds.prepareBurger();
  mcDonalds.changeBuilder(BigMacBuilder());
  mcDonalds.prepareBurger();
}

class McDonalds {
  BurgerBuilderBase burgerBuilder;
  McDonalds(this.burgerBuilder);

  void changeBuilder(BurgerBuilderBase burgerBuilder) {
    this.burgerBuilder = burgerBuilder;
  }

  void prepareBurger() {
    burgerBuilder.createBurger();
    burgerBuilder.setBurgetPrice();
    burgerBuilder.addBuns();
    burgerBuilder.addBeefBatty();
    burgerBuilder.addCheese();
  }
}

abstract class BurgerBuilderBase {
  late Burger burger;
  late double price;
  void createBurger() {
    burger = Burger();
  }

  void setBurgetPrice() {
    burger.price = price;
  }

  void addBuns();
  void addCheese();
  void addBeefBatty();
}

class ChickenMacBuilder extends BurgerBuilderBase {
  ChickenMacBuilder() {
    price = 4.99;
  }
  @override
  void addBeefBatty() {
    burger.addIngredient(BeefBatty());
  }

  @override
  void addBuns() {
    burger.addIngredient(BigMacBun());
  }

  @override
  void addCheese() {
    // no need
  }
}

class BigMacBuilder extends BurgerBuilderBase {
  BigMacBuilder() {
    price = 3.99;
  }
  @override
  void addBeefBatty() {
    burger.addIngredient(BeefBatty());
  }

  @override
  void addBuns() {
    burger.addIngredient(BigMacBun());
  }

  @override
  void addCheese() {
    burger.addIngredient(Cheese());
  }
}

class Burger {
  final List<Ingredient> _ingredients = [];
  late double _price;
  void addIngredient(Ingredient ingredient) {
    _ingredients.add(ingredient);
  }

  double get price => double.tryParse(_price.toStringAsFixed(2)) ?? 0.00;

  set price(double value) {
    _price = value;
  }
}

abstract class Ingredient {
  late List<String> allergens;
  late String name;
  List<String> getAllergens() {
    return allergens;
  }

  String getName() {
    return name;
  }
}

class BigMacBun extends Ingredient {
  BigMacBun() {
    name = "Big Mac Bun";
    allergens = ["Wheat"];
  }
}

class RegularBun extends Ingredient {
  RegularBun() {
    name = "Regular Bun";
    allergens = ["Wheat"];
  }
}

class Cheese extends Ingredient {
  Cheese() {
    name = "Cheese";
    allergens = ["Milk", "Soy"];
  }
}

class BeefBatty extends Ingredient {
  BeefBatty() {
    name = "Beef Batty";
    allergens = [];
  }
}
