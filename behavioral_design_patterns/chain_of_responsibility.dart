void main() {
  NumbersChain chain1 = NegativeHandler();
  NumbersChain chain2 = PositiveHandler();
  NumbersChain chain3 = ZeroHandler();
  chain1.next(chain2);
  chain2.next(chain3);
  chain1.handleNumber(Number(0));
}

class Number {
  int number;
  Number(this.number);
}

abstract class NumbersChain {
  void next(NumbersChain chain);
  void handleNumber(Number number);
}

class NegativeHandler implements NumbersChain {
  late NumbersChain nextHandler;

  @override
  void handleNumber(Number number) {
    print("handling negative");
    if (number.number < 0) {
      print("I can handle it.");
    } else {
      print("I will pass it to the next handler");
      nextHandler.handleNumber(number);
    }
  }

  @override
  void next(NumbersChain chain) {
    nextHandler = chain;
  }
}

class PositiveHandler implements NumbersChain {
  late NumbersChain nextHandler;

  @override
  void handleNumber(Number number) {
    print("handling positive");
    if (number.number > 0) {
      print("I can handle it.");
    } else {
      print("I will pass it to the next handler");
      nextHandler.handleNumber(number);
    }
  }

  @override
  void next(NumbersChain chain) {
    nextHandler = chain;
  }
}

class ZeroHandler implements NumbersChain {
  late NumbersChain nextHandler;

  @override
  void handleNumber(Number number) {
    print("handling zero");
    if (number.number == 0) {
      print("I can handle it.");
    } else {
      print("I will pass it to the next handler");
      nextHandler.handleNumber(number);
    }
  }

  @override
  void next(NumbersChain chain) {
    nextHandler = chain;
  }
}
