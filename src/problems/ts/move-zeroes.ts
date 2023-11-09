// https://leetcode.com/problems/move-zeroes/

// 283. Move Zeroes
// Easy
// 14.9K
// 376
// Companies
// Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

// Note that you must do this in-place without making a copy of the array.

// Example 1:

// Input: nums = [0,1,0,3,12]
// Output: [1,3,12,0,0]
// Example 2:

// Input: nums = [0]
// Output: [0]

function moveZeroes(nums: number[]): void {
  let cursor: number = 0;

  nums.forEach((number) => {
    if (number !== 0) {
      nums[cursor] = number;
      cursor++;
    }
  });

  while (cursor < nums.length) {
    nums[cursor] = 0;
    cursor++;
  }
}

console.log(moveZeroes([0, 1, 2, 0, 3, 4, 0, 0, 5]));
