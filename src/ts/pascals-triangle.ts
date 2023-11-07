// https://leetcode.com/problems/pascals-triangle/
//     118. Pascal's Triangle
// Easy
// Given an integer numRows, return the first numRows of Pascal's triangle.
//
// In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:
//
//
//
//
// Example 1:
//
// Input: numRows = 5
// Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
// Example 2:
//
// Input: numRows = 1
// Output: [[1]]


// Complexity T: O(n^2), S: O(n^2)
function generate(numRows: number): number[][] {
  let result: number[][] = [];

  for (let i = 0; i < numRows; i++) {
    result[i] = [1];

    for (let j = 1; j < i; j++) {
      result[i][j] = result[i - 1][j - 1] + result[i - 1][j];
    }

    if (i > 0) result[i].push(1);
  }

  return result
};