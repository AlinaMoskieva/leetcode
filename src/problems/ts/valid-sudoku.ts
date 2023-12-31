// // https://leetcode.com/problems/valid-sudoku/

// 36. Valid Sudoku
// Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

// Each row must contain the digits 1-9 without repetition.
// Each column must contain the digits 1-9 without repetition.
// Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
// Note:

// A Sudoku board (partially filled) could be valid but is not necessarily solvable.
// Only the filled cells need to be validated according to the mentioned rules.

// Example 1:

// Input: board =
// [["5","3",".",".","7",".",".",".","."]
// ,["6",".",".","1","9","5",".",".","."]
// ,[".","9","8",".",".",".",".","6","."]
// ,["8",".",".",".","6",".",".",".","3"]
// ,["4",".",".","8",".","3",".",".","1"]
// ,["7",".",".",".","2",".",".",".","6"]
// ,[".","6",".",".",".",".","2","8","."]
// ,[".",".",".","4","1","9",".",".","5"]
// ,[".",".",".",".","8",".",".","7","9"]]
// Output: true
// Example 2:

// Input: board =
// [["8","3",".",".","7",".",".",".","."]
// ,["6",".",".","1","9","5",".",".","."]
// ,[".","9","8",".",".",".",".","6","."]
// ,["8",".",".",".","6",".",".",".","3"]
// ,["4",".",".","8",".","3",".",".","1"]
// ,["7",".",".",".","2",".",".",".","6"]
// ,[".","6",".",".",".",".","2","8","."]
// ,[".",".",".","4","1","9",".",".","5"]
// ,[".",".",".",".","8",".",".","7","9"]]
// Output: false
// Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.

// Constraints:

// board.length == 9
// board[i].length == 9
// board[i][j] is a digit 1-9 or '.'.

function verify(row: string[]): boolean {
  for (let i = 0; i < row.length; i++) {
    if (isNaN(parseInt(row[i]))) continue;

    if (
      parseInt(row[i]) < 0 ||
      parseInt(row[i]) > 10 ||
      row.indexOf(row[i]) !== i
    ) {
      throw new Error(
        `${{
          isNAN: !isNaN(parseInt(row[i])),
          moreThanZero: parseInt(row[i]) < 0,
          lessThanten: parseInt(row[i]) > 10,
          unique: row.indexOf(row[i]) !== i
        }}`
      );
    }
  }

  return true;
}

function isValidSudoku(board: string[][]): boolean {
  let tempArray = new Array(board.length);
  try {
    for (let i = 0; i < board.length; i++) {
      verify(board[i]);

      for (let j = 0; j < board.length; j++) tempArray[j] = board[j][i];

      verify(tempArray);
    }

    for (let t = 0; t < board.length; t += 3) {
      for (let k = 0; k < board.length; k += 3) {
        tempArray = [];
        for (let i = 0; i < 3; i++) {
          for (let j = 0; j < 3; j++) {
            tempArray.push(board[i + k][j + t]);
          }
        }
        verify(tempArray);
      }
    }
  } catch (e) {
    return false;
  }

  return true;
}

isValidSudoku([
  ['5', '3', '.', '.', '7', '.', '.', '.', '.'],
  ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
  ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
  ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
  ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
  ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
  ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
  ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
  ['.', '.', '.', '.', '8', '.', '.', '7', '9']
]);
