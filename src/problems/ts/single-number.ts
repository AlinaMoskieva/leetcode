// https://leetcode.com/problems/single-number/

// 136. Single Number
// Easy
// 14.9K
// 595
// Companies
// Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

// You must implement a solution with a linear runtime complexity and use only constant extra space.

// Example 1:

// Input: nums = [2,2,1]
// Output: 1
// Example 2:

// Input: nums = [4,1,2,1,2]
// Output: 4
// Example 3:

// Input: nums = [1]
// Output: 1

// Constraints:

// 1 <= nums.length <= 3 * 104
// -3 * 104 <= nums[i] <= 3 * 104
// Each element in the array appears twice except for one element which appears only once.

function singleNumber(nums: number[]): number {
  nums.sort();

  for (let i = 0; i < nums.length; i += 2) {
    if (i == nums.length - 1 || nums[i] != nums[i + 1]) return nums[i];
  }
}

singleNumber([2, 2, 1]);
singleNumber([4, 1, 2, 1, 2]);
singleNumber([1]);
