void main() {
  print("====== Insertion Sort ======");
  print(insertionSort([1, 3, 0, 7, 4, 9, 3, 0, 8]).toString());
}

/// https://www.youtube.com/watch?v=JecAk1FAOck&list=PLCInYL3l2AajqOUW_2SwjWeMwf4vL4RSp&index=27
/// Time Complexity O(n^2)
/// Space Complexity O(1)
List insertionSort(List list) {
  if (list.isNotEmpty) {
    late dynamic key, j;
    for (int i = 1; i < list.length; i++) {
      key = list[i];
      j = i - 1;

      /// shifting elements
      while (j >= 0 && list[j] > key) {
        list[j + 1] = list[j];
        j = j - 1;
      }
      list[j + 1] = key;
    }
  }
  return list;
}
