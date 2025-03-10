void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int target = 5;
  int result = binarySearch(arr, target);
  print(result);
}

/**
 * Below code is the implementation of binary search algorithm.
 * Binary search is an efficient algorithm for finding an item from a sorted list of items.
 * It works by repeatedly dividing in half the portion of the list that could contain the item, until you've narrowed down the possible locations to just one.
 * 
 * The time complexity of the above code is O(log n) where n is the size of the array.
 * The space complexity of the above code is O(1).
 * 
 * Example:
 * arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
 * target = 5
 * binarySearch(arr, target) => 4
 */
int binarySearch(List<int> arr, int target) {
  int left = 0;
  int right = arr.length - 1;

  while (left <= right) {
    int mid = left + ((right - left) ~/ 2);

    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1;
}

/**
 * Above code is the implementation of finding the lower bound of a number in a sorted array.
 * Lower bound is the index of the first element that is greater than or equal to the target number.
 * If the number exists in the array, it returns the first occurrence.
 * If the number does not exist, it returns the first position where the number can be inserted while keeping the array sorted.
 * 
 * The time complexity of the above code is O(log n) where n is the size of the array.
 * The space complexity of the above code is O(1).
 * 
 * Example:
 * arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
 * target = 5
 * lowerBound(arr, arr.length, target) => 4
 */
int lowerBound(List<int> arr, int n, int target) {
  int low = 0;
  int high = n - 1;
  int ans = n;

  while (low <= high) {
    int mid = low + ((high - low) ~/ 2);

    if (arr[mid] >= target) {
      ans = mid;
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return ans;
}

/**
 * Below code is the implementation of finding the upper bound of a number in a sorted array.
 * Upper bound is the index of the first element that is greater than the target number.
 * If the number exists, it returns the first index where a greater number appears.
 * If the number does not exist, it returns the first index where it can be inserted while keeping the array sorted.

 * The time complexity of the above code is O(log n) where n is the size of the array.
 * The space complexity of the above code is O(1).
 * 
 * Example:
 * arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
 * target = 5
 * upperBound(arr, arr.length, target) => 5
 */
int upperBound(List<int> arr, int n, int target) {
  int low = 0;
  int high = n - 1;
  int ans = n;

  while (low <= high) {
    int mid = low + ((high - low) ~/ 2);

    if (arr[mid] > target) {
      ans = mid;
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return ans;
}
