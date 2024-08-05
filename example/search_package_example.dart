import 'package:search_package/search_package.dart';

void main() {
  // Create a list of integers
  List<int> intList = [1, 3, 5, 7, 9, 11, 13, 15];
  // Create a list of strings
  List<String> stringList = ["apple", "banana", "cherry", "date"];

  // Perform linear search on the integer list for the element 7
  int linearSearchResult = SearchAlgorithms.linearSearch(intList, 7);
  // Print the result of the linear search
  print('Linear Search Result for 7: $linearSearchResult');

  // Perform binary search on the integer list for the element 7
  int binarySearchResult = SearchAlgorithms.binarySearch(intList, 7);
  // Print the result of the binary search
  print('Binary Search Result for 7: $binarySearchResult');

  // Perform jump search on the integer list for the element 7
  int jumpSearchResult = SearchAlgorithms.jumpSearch(intList, 7);
  // Print the result of the jump search
  print('Jump Search Result for 7: $jumpSearchResult');

  // Perform linear search on the string list for the element "cherry"
  int linearSearchStringResult =
      SearchAlgorithms.linearSearch(stringList, "cherry");
  // Print the result of the linear search on the string list
  print('Linear Search Result for "cherry": $linearSearchStringResult');

  // Perform binary search on the string list for the element "cherry"
  int binarySearchStringResult =
      SearchAlgorithms.binarySearch(stringList, "cherry");
  // Print the result of the binary search on the string list
  print('Binary Search Result for "cherry": $binarySearchStringResult');

  // Perform jump search on the string list for the element "cherry"
  int jumpSearchStringResult =
      SearchAlgorithms.jumpSearch(stringList, "cherry");
  // Print the result of the jump search on the string list
  print('Jump Search Result for "cherry": $jumpSearchStringResult');
}
