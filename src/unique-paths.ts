// https://leetcode.com/problems/unique-paths/unique-paths

// 62. Unique Paths
// Medium
// There is a robot on an m x n grid. The robot is initially located at the top-left corner (i.e., grid[0][0]). The robot tries to move to the bottom-right corner (i.e., grid[m - 1][n - 1]). The robot can only move either down or right at any point in time.

// Given the two integers m and n, return the number of possible unique paths that the robot can take to reach the bottom-right corner.

// The test cases are generated so that the answer will be less than or equal to 2 * 109.

 

// Example 1:
// Input: m = 3, n = 7
// Output: 28
// Example 2:

// Input: m = 3, n = 2
// Output: 3
// Explanation: From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
// 1. Right -> Down -> Down
// 2. Down -> Down -> Right
// 3. Down -> Right -> Down
 

// Constraints:


function uniquePaths(m: number, n: number): number {
   let field = Array.from(Array(m).fill(1), () => new Array(n).fill(1));

   for (let i = 1; i < m; i++) {
    for (let j = 1; j < n; j++) {
      field[i][j] = field[i - 1][j] + field[i][j - 1]
    }
   }

  return field[m - 1][n - 1];

};

console.log(uniquePaths(3, 7))