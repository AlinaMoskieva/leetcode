// https://leetcode.com/problems/find-the-duplicate-number/?envType=daily-question&envId=2023-09-19
// 287. Find the Duplicate Number
// Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.

// There is only one repeated number in nums, return this repeated number.

// You must solve the problem without modifying the array nums and uses only constant extra space.

// Example 1:

// Input: nums = [1,3,4,2,2]
// Output: 2
// Example 2:

// Input: nums = [3,1,3,4,2]
// Output: 3

// Constraints:

// 1 <= n <= 105
// nums.length == n + 1
// 1 <= nums[i] <= n
// All the integers in nums appear only once except for precisely one integer which appears two or more times.

// Follow up:

// How can we prove that at least one duplicate number must exist in nums?
// Can you solve the problem in linear runtime complexity?

// Time Complexity is O(n)
// Space Complexity is O(1)
function findDuplicate(nums: number[]): number {
  let fastPointer = 0;
  let slowPointer = 0;

  do {
    fastPointer = nums[nums[fastPointer]];
    slowPointer = nums[slowPointer];
  } while (fastPointer !== slowPointer);

  fastPointer = 0; // to start from the begining of the list

  while (fastPointer !== slowPointer) {
    fastPointer = nums[fastPointer];
    slowPointer = nums[slowPointer];
  }

  return fastPointer;
}
