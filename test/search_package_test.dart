import 'package:search_package/search_package.dart';
import 'package:test/test.dart';

void main() {
  group('SearchAlgorithms Tests', () {
    // Linear Search Tests

    /// Test for Linear Search algorithm to ensure it returns the correct index
    /// for an element that exists in the list.
    ///
    /// This test verifies that the `linearSearch` method returns the correct index
    /// for an element that is present in the list. It checks if the method correctly
    /// finds the position of the element and returns it.
    ///
    /// Expected outcome: The index of the element 7 in the list [1, 3, 5, 7, 9, 11, 13, 15] should be 3.
    test('Linear Search should return correct index for existing element', () {
      List<int> intList = [1, 3, 5, 7, 9, 11, 13, 15];
      int index = SearchAlgorithms.linearSearch(intList, 7);
      expect(index, 3);
    });

    /// Test for Linear Search algorithm to ensure it returns -1 for a non-existing element.
    ///
    /// This test verifies that the `linearSearch` method correctly returns -1 when the
    /// searched element is not present in the list. It checks if the method handles
    /// such cases properly and returns the appropriate result.
    ///
    /// Expected outcome: The element 8 is not present in the list [1, 3, 5, 7, 9, 11, 13, 15],
    /// so the method should return -1.
    test('Linear Search should return -1 for non-existing element', () {
      List<int> intList = [1, 3, 5, 7, 9, 11, 13, 15];
      int index = SearchAlgorithms.linearSearch(intList, 8);
      expect(index, -1);
    });

    // Binary Search Tests

    /// Test for Binary Search algorithm to ensure it returns the correct index
    /// for an element that exists in the list.
    ///
    /// This test verifies that the `binarySearch` method correctly finds and returns
    /// the index of an element that is present in the sorted list. It checks if
    /// the method properly performs the binary search and returns the expected result.
    ///
    /// Expected outcome: The index of the element 7 in the sorted list [1, 3, 5, 7, 9, 11, 13, 15]
    /// should be 3.
    test('Binary Search should return correct index for existing element', () {
      List<int> intList = [1, 3, 5, 7, 9, 11, 13, 15];
      int index = SearchAlgorithms.binarySearch(intList, 7);
      expect(index, 3);
    });

    /// Test for Binary Search algorithm to ensure it returns -1 for a non-existing element.
    ///
    /// This test verifies that the `binarySearch` method returns -1 when the searched element
    /// is not present in the sorted list. It checks if the method handles such cases correctly
    /// and returns the appropriate result.
    ///
    /// Expected outcome: The element 8 is not present in the sorted list [1, 3, 5, 7, 9, 11, 13, 15],
    /// so the method should return -1.
    test('Binary Search should return -1 for non-existing element', () {
      List<int> intList = [1, 3, 5, 7, 9, 11, 13, 15];
      int index = SearchAlgorithms.binarySearch(intList, 8);
      expect(index, -1);
    });

    // Jump Search Tests

    /// Test for Jump Search algorithm to ensure it returns the correct index
    /// for an element that exists in the list.
    ///
    /// This test verifies that the `jumpSearch` method correctly finds and returns
    /// the index of an element that is present in the sorted list. It checks if
    /// the method performs the jump search correctly and returns the expected result.
    ///
    /// Expected outcome: The index of the element 7 in the sorted list [1, 3, 5, 7, 9, 11, 13, 15]
    /// should be 3.
    test('Jump Search should return correct index for existing element', () {
      List<int> intList = [1, 3, 5, 7, 9, 11, 13, 15];
      int index = SearchAlgorithms.jumpSearch(intList, 7);
      expect(index, 3);
    });

    /// Test for Jump Search algorithm to ensure it returns -1 for a non-existing element.
    ///
    /// This test verifies that the `jumpSearch` method returns -1 when the searched element
    /// is not present in the sorted list. It checks if the method handles such cases properly
    /// and returns the appropriate result.
    ///
    /// Expected outcome: The element 8 is not present in the sorted list [1, 3, 5, 7, 9, 11, 13, 15],
    /// so the method should return -1.
    test('Jump Search should return -1 for non-existing element', () {
      List<int> intList = [1, 3, 5, 7, 9, 11, 13, 15];
      int index = SearchAlgorithms.jumpSearch(intList, 8);
      expect(index, -1);
    });

    // Linear Search with Strings

    /// Test for Linear Search algorithm with string elements to ensure it returns the correct index
    /// for an existing string element.
    ///
    /// This test verifies that the `linearSearch` method correctly finds and returns the index of
    /// a string element that is present in the list of strings. It checks if the method works
    /// as expected with string elements.
    ///
    /// Expected outcome: The index of the string "cherry" in the list ["apple", "banana", "cherry", "date"]
    /// should be 2.
    test(
        'Linear Search should return correct index for existing string element',
        () {
      List<String> stringList = ["apple", "banana", "cherry", "date"];
      int index = SearchAlgorithms.linearSearch(stringList, "cherry");
      expect(index, 2);
    });

    // Binary Search with Strings

    /// Test for Binary Search algorithm with string elements to ensure it returns the correct index
    /// for an existing string element.
    ///
    /// This test verifies that the `binarySearch` method correctly finds and returns the index of
    /// a string element that is present in the sorted list of strings. It checks if the method works
    /// properly with string elements.
    ///
    /// Expected outcome: The index of the string "cherry" in the sorted list ["apple", "banana", "cherry", "date"]
    /// should be 2.
    test(
        'Binary Search should return correct index for existing string element',
        () {
      List<String> stringList = ["apple", "banana", "cherry", "date"];
      int index = SearchAlgorithms.binarySearch(stringList, "cherry");
      expect(index, 2);
    });

    // Jump Search with Strings

    /// Test for Jump Search algorithm with string elements to ensure it returns the correct index
    /// for an existing string element.
    ///
    /// This test verifies that the `jumpSearch` method correctly finds and returns the index of
    /// a string element that is present in the sorted list of strings. It checks if the method works
    /// properly with string elements.
    ///
    /// Expected outcome: The index of the string "cherry" in the sorted list ["apple", "banana", "cherry", "date"]
    /// should be 2.
    test('Jump Search should return correct index for existing string element',
        () {
      List<String> stringList = ["apple", "banana", "cherry", "date"];
      int index = SearchAlgorithms.jumpSearch(stringList, "cherry");
      expect(index, 2);
    });
  });
}
