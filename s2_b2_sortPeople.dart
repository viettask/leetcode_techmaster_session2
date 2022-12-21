//Bài 2: https://leetcode.com/problems/sort-the-people/

class Solution {
  List<String> sortPeople(List<String> names, List<int> heights) {
    List<int> result = [];
    result.addAll(heights);
    List<String> result1 = [];
    result.sort((b, a) => a.compareTo(b));
    result.forEach((e) {
      result1.add(names[heights.indexOf(e)]);
    });

    return result1;
  }
}
