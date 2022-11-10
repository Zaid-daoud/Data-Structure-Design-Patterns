void main() {}

abstract class Shap {
  Color color;
  Shap(this.color);
  void applyColor();
}

class Circle extends Shap {
  Circle(Color color) : super(color);

  @override
  void applyColor() {
    color.applyColor();
  }
}

class Rectangle extends Shap {
  Rectangle(Color color) : super(color);

  @override
  void applyColor() {
    color.applyColor();
  }
}

abstract class Color {
  void applyColor();
}

class Red extends Color {
  @override
  void applyColor() {}
}

class Green extends Color {
  @override
  void applyColor() {}
}
