library search_package;

import 'dart:math';
import 'dart:core';

/// A class containing static methods for different search algorithms.
class SearchAlgorithms {
  /// Performs a linear search on a list to find the index of a specified element.
  ///
  /// [list] - The list of elements to search within.
  /// [element] - The element to search for in the list.
  /// Returns the index of the element if found, otherwise -1.
  /// It also prints the time taken for the search in microseconds.
  static int linearSearch(List<dynamic> list, dynamic element) {
    final stopwatch = Stopwatch()..start(); // Start measuring time
    for (int i = 0; i < list.length; i++) {
      if (list[i] == element) {
        stopwatch.stop(); // Stop measuring time
        print(
            'Linear Search took: ${stopwatch.elapsedMicroseconds} microseconds');
        return i; // Return index if element is found
      }
    }
    stopwatch.stop(); // Stop measuring time
    print('Linear Search took: ${stopwatch.elapsedMicroseconds} microseconds');
    return -1; // Return -1 if element is not found
  }

  /// Performs a binary search on a sorted list to find the index of a specified element.
  ///
  /// [list] - The sorted list of elements to search within.
  /// [element] - The element to search for in the list.
  /// Returns the index of the element if found, otherwise -1.
  /// It also prints the time taken for the search in microseconds.
  static int binarySearch(List<dynamic> list, dynamic element) {
    final stopwatch = Stopwatch()..start(); // Start measuring time
    int left = 0;
    int right = list.length - 1;

    while (left <= right) {
      int middle = left + ((right - left) >> 1); // Calculate the middle index

      if (list[middle] == element) {
        stopwatch.stop(); // Stop measuring time
        print(
            'Binary Search took: ${stopwatch.elapsedMicroseconds} microseconds');
        return middle; // Return index if element is found
      }

      if ((list[middle] as Comparable).compareTo(element) < 0) {
        left = middle + 1; // Search the right half
      } else {
        right = middle - 1; // Search the left half
      }
    }

    stopwatch.stop(); // Stop measuring time
    print('Binary Search took: ${stopwatch.elapsedMicroseconds} microseconds');
    return -1; // Return -1 if element is not found
  }

  /// Performs a jump search on a sorted list to find the index of a specified element.
  ///
  /// [list] - The sorted list of elements to search within.
  /// [element] - The element to search for in the list.
  /// Returns the index of the element if found, otherwise -1.
  /// It also prints the time taken for the search in microseconds.
  static int jumpSearch(List<dynamic> list, dynamic element) {
    final stopwatch = Stopwatch()..start(); // Start measuring time
    int length = list.length;
    int step = sqrt(length).toInt(); // Calculate the block size
    int prev = 0;

    // Jump ahead by block size until the element is within range
    while ((list[min(step, length) - 1] as Comparable).compareTo(element) < 0) {
      prev = step;
      step += sqrt(length).toInt();
      if (prev >= length) {
        stopwatch.stop(); // Stop measuring time
        print(
            'Jump Search took: ${stopwatch.elapsedMicroseconds} microseconds');
        return -1; // Return -1 if element is not found within the range
      }
    }

    // Perform linear search within the block
    while ((list[prev] as Comparable).compareTo(element) < 0) {
      prev++;
      if (prev == min(step, length)) {
        stopwatch.stop(); // Stop measuring time
        print(
            'Jump Search took: ${stopwatch.elapsedMicroseconds} microseconds');
        return -1; // Return -1 if element is not found within the block
      }
    }

    if (list[prev] == element) {
      stopwatch.stop(); // Stop measuring time
      print('Jump Search took: ${stopwatch.elapsedMicroseconds} microseconds');
      return prev; // Return index if element is found
    }

    stopwatch.stop(); // Stop measuring time
    print('Jump Search took: ${stopwatch.elapsedMicroseconds} microseconds');
    return -1; // Return -1 if element is not found
  }
}
