Bài 6: https://leetcode.com/problems/merge-sorted-array/

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    List<int> result = [];
    result.addAll(nums1.sublist(0, m));
    result.addAll(nums2.sublist(0, n));
    result.sort();
    nums1.clear();
    nums1.addAll(result);
  }
}
