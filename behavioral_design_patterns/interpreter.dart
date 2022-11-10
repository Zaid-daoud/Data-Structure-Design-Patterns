void main() {
  Pattern pattern = InfixToPostfixPattern();
  print(pattern.conversion("a+b/c"));
}

abstract class Pattern {
  String conversion(String exp);
}

class InfixToPostfixPattern implements Pattern {
  @override
  String conversion(String exp) {
    /// do the calculation then :
    return exp;
  }
}
