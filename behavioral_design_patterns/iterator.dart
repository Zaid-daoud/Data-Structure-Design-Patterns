void main() {
  MyList list = MyList();
  while (list.hasNext) {
    print(list.next());
  }
}

abstract class Iterator<T> {
  T next();
  bool get hasNext;
}

class MyList implements Iterator<String> {
  List<String> _names = ["zaid", "ahmad", "ali", "daoud"];
  int i = 0;
  @override
  bool get hasNext => i < _names.length;

  @override
  String next() {
    if (hasNext) {
      return _names[i++];
    } else {
      return "Oppps";
    }
  }
}
