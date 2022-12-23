//Bài 5: https://leetcode.com/problems/pascals-triangle/description/


class Solution {
  List<List<int>> generate(int numRows) {
  List<List<int>> result = [];

  for (int row = 1; row < numRows + 1; row++) {
    if (row == 1) {
      result.add([1]);
    } else {
      if (row == 2) {
        result.add([1, 1]);
      } else {
        List<int> temp = Iterable<int>.generate(row).toList();

        for (int i = 0; i < (row / 2); i++) {
          if (i == 0) {
            temp[i] = temp[row - 1] = 1;
          } else {
            if (row > 2) {
              temp[i] = temp[row - i - 1] =
                  result[row - 2][i - 1] + result[row - 2][i];
            }

            if ((row % 2 != 0) && (i + 1 == row / 2) & (row > 2)) {
              temp[i + 1] = result[row - 2][i] * 2;
            }
          }
        }

        result.add(temp);
      }
    }
  }
  return result;
  }
}