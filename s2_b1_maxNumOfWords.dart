//Bài 1: https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/

import "dart:math";

class Solution {
  int mostWordsFound(List<String> sentences) {
      List<int> result=[];
      sentences.forEach((e) {
          result.add(e.split(' ').length);
      }
      );
  return result.reduce(max);
  }
}