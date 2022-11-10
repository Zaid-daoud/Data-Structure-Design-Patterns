void main() {
  List a = [88, 3, 0, 8, 4, 9, 3, 4, 9, 3];
  print(a);
  print("====== Selection Sort ======");
  print(selectionSort(a).toString() + "\n");
  print(a);
}

/// https://www.youtube.com/watch?v=EnodMqJuQEo&list=PLCInYL3l2AajqOUW_2SwjWeMwf4vL4RSp&index=25
/// Time Complexity O(n^2)
/// Space Complexity O(1)
List selectionSort(List list) {
  if (list.isNotEmpty) {
    late int minIndex;
    for (int i = 0; i < list.length - 1; i++) {
      minIndex = i;
      for (int j = i + 1; j < list.length; j++) {
        if (list[j] < list[minIndex]) {
          minIndex = j;
        }
      }
      var temp = list[i];
      list[i] = list[minIndex];
      list[minIndex] = temp;
    }
  }
  return list;
}
