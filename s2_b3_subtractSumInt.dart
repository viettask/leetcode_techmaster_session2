//Bài 3: https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/

class Solution {
  int subtractProductAndSum(int n) {
    String strN = n.toString();
    var mul = 1, sum = 0;
    List<int> intN = (strN.split('')).map(int.parse).toList();
    intN.forEach((e) {
      mul *= e;
      sum += e;
    });

    return mul - sum;
  }
}
