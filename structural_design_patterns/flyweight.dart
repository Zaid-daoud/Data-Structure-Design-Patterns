import 'dart:collection';

void main() {}

class Book {
  String name;
  double price;
  BookType? type;
  Book(this.name, this.price, this.type);
}

class BookType {
  String type;
  String desc;
  BookType(this.type, this.desc);
}

class BookFactory {
  static final Map<String, BookType> bookTypes = HashMap<String, BookType>();

  static BookType getBookType(
      String name, double price, String type, String desc) {
    bookTypes.putIfAbsent(type, () => BookType(type, desc));
    return bookTypes[type]!;
  }
}

class Store {
  final List<Book> books = [];
  void storeBook(String name, double price, String type, String desc) {
    BookType bookType = BookFactory.getBookType(name, price, type, desc);
    books.add(Book(name, price, bookType));
  }
}
