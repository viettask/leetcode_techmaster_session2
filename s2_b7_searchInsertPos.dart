//Bài 7: https://leetcode.com/problems/search-insert-position/

class Solution {
  int searchInsert(List<int> nums, int target) {
    int result = 0;
    if (nums.indexOf(target) > 0) {
      result = nums.indexOf(target);
    } else {
      if (nums.last < target)
        result = nums.length;
      else {
        for (int i = 0; i < nums.length; i++) {
          if (nums[i] < target && nums[i + 1] > target) result = i + 1;
        }
      }
    }

    return result;
  }
}
