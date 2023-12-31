// https://leetcode.com/problems/set-matrix-zeroes/
//   73. Set Matrix Zeroes
// Medium
// Given an m x n integer matrix matrix, if an element is 0, set its entire row and column to 0's.
//
// You must do it in place.
//
//
//
//   Example 1:
//
//
// Input: matrix = [[1,1,1],[1,0,1],[1,1,1]]
// Output: [[1,0,1],[0,0,0],[1,0,1]]
// Example 2:
//
//
// Input: matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
// Output: [[0,0,0,0],[0,4,5,0],[0,3,1,0]]
//
//
// Constraints:
//
//   m == matrix.length
// n == matrix[0].length
// 1 <= m, n <= 200
// -231 <= matrix[i][j] <= 231 - 1
//
//
// Follow up:
//
//   A straightforward solution using O(mn) space is probably a bad idea.
//   A simple improvement uses O(m + n) space, but still not the best solution.
//   Could you devise a constant space solution?

/**
 Do not return anything, modify matrix in-place instead.
 */

// Complexity: T: O(n^2), S: O(n)
function setZeroes(matrix: number[][]): void {
  const columsToZero: number[] = [];
  const rowsToZero: number[] = [];

  for (let i = 0; i < matrix.length; i++) {
    for (let j = 0; j < matrix.length; j++) {
      if (matrix[i][j] === 0) {
        columsToZero.push(j);
        rowsToZero.push(i);
      }
    }
  }

  if (columsToZero.length > 0) {
    for (let i = 0; i < matrix.length; i++) {
      for (let j = 0; j < columsToZero.length; j++) {
        matrix[i][columsToZero[j]] = 0;
      }
    }
  }

  if (rowsToZero.length > 0) {
    for (let i = 0; i < matrix.length; i++) {
      for (let j = 0; j < rowsToZero.length; j++) {
        matrix[rowsToZero[j]][i] = 0;
      }
    }
  }
}

setZeroes([
  [1, 1, 1],
  [1, 0, 1],
  [1, 1, 1]
]);
