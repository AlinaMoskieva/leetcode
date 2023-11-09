// https://leetcode.com/problems/rotate-image/
// 48. Rotate Image
// You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).

// You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

// Example 1:

// Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
// Output: [[7,4,1],[8,5,2],[9,6,3]]
// Example 2:

// Input: matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
// Output: [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]

// Constraints:
// n == matrix.length == matrix[i].length
// 1 <= n <= 20
// -1000 <= matrix[i][j] <= 1000

/**
 Do not return anything, modify matrix in-place instead.
 */
function rotate(matrix: number[][]): void {
  const matrixLength = matrix.length;
  let cursor: number = 0;

  for (let i = 0; i < matrixLength; i++) {
    for (let j = matrixLength - 1; j >= 0; j--) {
      matrix[matrixLength + cursor]
        ? matrix[matrixLength + cursor].push(matrix[j][i])
        : (matrix[matrixLength + cursor] = [matrix[j][i]]);
    }
    cursor++;
  }

  matrix.splice(0, matrixLength);
}

rotate([
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]); // [[7,4,1],[8,5,2],[9,6,3]]
//  rotate([[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]); // [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]
