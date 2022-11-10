void main() {
  Circle circle = Circle("hi 1", 15);
  Circle circleClone = Circle.clone(circle);
  print(circle.name);
  print(circleClone.raduis);
}

abstract class Shape {
  late String name;
  Shape(this.name);
  // shallow copy
  Shape.clone(Shape shape) {
    name = shape.name;
  }
  // deep copy
  Shape clone();
  String render();
}

class Circle extends Shape {
  late double raduis;
  Circle(String name, this.raduis) : super(name);
  Circle.initial() : super("circle") {
    raduis = 50.0;
  }
  Circle.clone(Circle circle) : super.clone(circle) {
    raduis = circle.raduis;
  }

  @override
  Shape clone() {
    return Circle.clone(this);
  }

  @override
  String render() {
    return "Circle Widget";
  }
}
