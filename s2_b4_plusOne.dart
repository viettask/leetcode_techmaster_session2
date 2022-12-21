//Bài 4: https://leetcode.com/problems/plus-one/

class Solution {
  List<int> plusOne(List<int> digits) {
    BigInt num = BigInt.parse(digits.map((i) => i.toString()).join(""));
    List<int> result = [];
    (num + BigInt.one)
        .toString()
        .split('')
        .toList()
        .forEach((i) => result.add(int.parse(i)));
    return result;
  }
}
