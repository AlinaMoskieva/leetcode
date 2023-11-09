// https://leetcode.com/problems/maximum-subarray/
// 53. Maximum Subarray
// Given an integer array nums, find the
// subarray
// with the largest sum, and return its sum.
//
//     Example 1:
//
// Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
// Output: 6
// Explanation: The subarray [4,-1,2,1] has the largest sum 6.
// Example 2:
//
// Input: nums = [1]
// Output: 1
// Explanation: The subarray [1] has the largest sum 1.
// Example 3:
//
// Input: nums = [5,4,-1,7,8]
// Output: 23
// Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.

// [-2,1,-3,4,-1,2,1,-5,4], output: 6
// 1) localMax = -2, globalMax = -2
// 2) localMax = 1, globalMax = 1
// 3) localMax = -2, globalMax = 1
// 4) localMax = 4, globalMax = 4
// 5) localMax = 3, globalMax = 4
// 6) localMax = 5, globalMax = 5
// 7) localMax = 6, globalMax = 6
// 8) localMax = 1, globalMax = 6
// 9) localMax = 5, globalMax = 6

// Complexity: T: O(n), S: O(1)
function maxSubArray(nums: number[]): number {
  let localMax = nums[0];
  let globalMax = nums[0];

  for (let i = 1; i < nums.length; i++) {
    localMax = Math.max(nums[i], localMax + nums[i]);
    globalMax = Math.max(localMax, globalMax);
  }
  return globalMax;
}

maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]); // 6
