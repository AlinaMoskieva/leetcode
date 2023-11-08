https://leetcode.com/problems/hamming-distance/

// 461. Hamming Distance

// The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
// Given two integers x and y, return the Hamming distance between them.
//
//
//
// Example 1:
//
// Input: x = 1, y = 4
// Output: 2
// Explanation:
//   1   (0 0 0 1)
// 4   (0 1 0 0)
// ↑   ↑
// The above arrows point to positions where the corresponding bits are different.
//   Example 2:
//
// Input: x = 3, y = 1
// Output: 1

// Complexity: T: O(n), S: O(1)
function hammingDistance(x: number, y: number): number {
  let xorToBitRepresentation: string = (x ^ y).toString(2);

  return xorToBitRepresentation.split('').filter((bit) => bit === '1').length;
};
