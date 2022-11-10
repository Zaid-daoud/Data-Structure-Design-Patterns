/*
>> Advantage of Factory Design Pattern:
  - Factory Method Pattern allows the sub-classes to choose the type of objects to create.
  - It promotes the loose-coupling by eliminating the need to bind application-specific classes into the code. 
    That means the code interacts solely with the resultant interface or abstract class, so that it will work with any classes
    that implement that interface or that extends that abstract class.

>> Usage of Factory Design Pattern :
  - When a class doesn't know what sub-classes will be required to create
  - When a class wants that its sub-classes specify the objects to be created.
  - When the parent classes choose the creation of objects to its sub-classes.
*/
void main() {
  Shape triangle = Shape.triangle();
  Shape rectangle = Shape.rectangle();
  ShapeTwo triangle2 = ShapeTwo(ShapeType.triangle);
  ShapeTwo rectangle2 = ShapeTwo(ShapeType.rectangle);
  triangle.draw();
  rectangle.draw();
  triangle2.draw();
  rectangle2.draw();
}

/// First Way
abstract class Shape {
  factory Shape.triangle() {
    return Triangle();
  }

  factory Shape.rectangle() {
    return Rectangle();
  }

  void draw();
}

enum ShapeType { triangle, rectangle }

/// Second Way
abstract class ShapeTwo {
  factory ShapeTwo(ShapeType type) {
    switch (type) {
      case ShapeType.triangle:
        return Triangle();
      case ShapeType.rectangle:
        return Rectangle();
    }
  }
  void draw();
}

class Triangle implements Shape, ShapeTwo {
  @override
  void draw() {
    print(ShapeType.triangle.name.toUpperCase());
  }
}

class Rectangle implements Shape, ShapeTwo {
  @override
  void draw() {
    print(ShapeType.rectangle.name.toUpperCase());
  }
}
