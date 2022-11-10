void main() {
  print("====== Merge Sort ======");
  print(mergeSort([1, 3, 4, 8, 12, 0, 24, 11]).toString());
}

/// https://youtu.be/3P43wofKYOM?list=PLCInYL3l2AajqOUW_2SwjWeMwf4vL4RSp
/// #### Divide & Conqure
/// Time Complexity O(n log n)
/// Space Complexity O(n)
List mergeSort(List list) {
  if (list.length <= 1) {
    return list;
  }
  int pivotIndex = list.length ~/ 2;
  List leftList = mergeSort(list.sublist(0, pivotIndex));
  List rightList = mergeSort(list.sublist(pivotIndex));
  return mergeSortedLists(leftList, rightList);
}

List mergeSortedLists(leftPart, rightPart) {
  List result = [];
  int i = 0;
  int j = 0;
  while (i < leftPart.length && j < rightPart.length) {
    if (leftPart[i] <= rightPart[j]) {
      result.add(leftPart[i]);
      i++;
    } else {
      result.add(rightPart[j]);
      j++;
    }
  }
  while (i < leftPart.length) {
    result.add(leftPart[i]);
    i++;
  }
  while (j < rightPart.length) {
    result.add(rightPart[j]);
    j++;
  }
  return result;
}
