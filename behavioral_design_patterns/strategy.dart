void main() {
  Strategy addition = Addition();
  print(addition.calculate(3, 8));
}

abstract class Strategy {
  num calculate(num a, num b);
}

class Addition implements Strategy {
  @override
  num calculate(num a, num b) {
    return a + b;
  }
}

class Division implements Strategy {
  @override
  num calculate(num a, num b) {
    return a / b;
  }
}
