/*
>> Advantage of Abstract Factory Pattern:
  - Abstract Factory Pattern isolates the client code from concrete (implementation) classes.
  - It eases the exchanging of object families.
  - It promotes consistency among objects.

>> Usage of Abstract Factory Pattern:
  - When the system needs to be independent of how its object are created, composed, and represented.
  - When the family of related objects has to be used together, then this constraint needs to be enforced.
  - When you want to provide a library of objects that does not show implementations and only reveals interfaces.
  - When the system needs to be configured with one of a multiple family of objects.
*/

void main() {
  final IWidgetsFactory androidWidget =
      FactoryCreator.getFactory(Platforms.android);
  final IWidgetsFactory iosWidget = FactoryCreator.getFactory(Platforms.ios);
  print(androidWidget.getTitle());
  print(iosWidget.getTitle());
}

enum Platforms { android, ios }

class FactoryCreator {
  static IWidgetsFactory getFactory(Platforms platform) {
    if (platform == Platforms.ios) {
      return CupertinoWidgetFactory();
    }
    return MaterialWidgetFactory();
  }
}

abstract class IWidgetsFactory {
  String getTitle();
  Slider createSlider();
  Switch createSwitch();
}

class MaterialWidgetFactory implements IWidgetsFactory {
  @override
  Slider createSlider() {
    return AndroidSlider();
  }

  @override
  Switch createSwitch() {
    return AndroidSwitch();
  }

  @override
  String getTitle() {
    return "Android Widgets";
  }
}

class CupertinoWidgetFactory implements IWidgetsFactory {
  @override
  Slider createSlider() {
    return IOSSlider();
  }

  @override
  Switch createSwitch() {
    return IOSSwitch();
  }

  @override
  String getTitle() {
    return "IOS Widgets";
  }
}

abstract class Slider {
  String render();
}

class AndroidSlider extends Slider {
  @override
  String render() {
    return "return andriod slider widget";
  }
}

class IOSSlider extends Slider {
  @override
  String render() {
    return "return ios slider widget";
  }
}

abstract class Switch {
  String render();
}

class AndroidSwitch extends Switch {
  @override
  String render() {
    return "return andriod switch widget";
  }
}

class IOSSwitch extends Switch {
  @override
  String render() {
    return "return ios switch widget";
  }
}
