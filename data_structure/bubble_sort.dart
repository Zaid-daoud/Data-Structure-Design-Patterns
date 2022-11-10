void main() {
  print("====== Bubble Sort ======");
  print(bubbleSort([88, 3, 0, 8, 4, 9, 3, 0, 8]).toString());
}

/// https://www.youtube.com/watch?v=pIEGHDZHOCk&list=PLCInYL3l2AajqOUW_2SwjWeMwf4vL4RSp&index=26
/// Time Complexity O(n^2)
/// Space Complexity O(1)
List bubbleSort(List list) {
  if (list.isNotEmpty) {
    dynamic key, next;
    for (int i = 0; i < list.length - 1; i++) {
      for (int j = 0; j < list.length - i - 1; j++) {
        key = list[j];
        next = list[j + 1];
        if (key > next) {
          list[j] = next;
          list[j + 1] = key;
        }
      }
    }
  }
  return list;
}
