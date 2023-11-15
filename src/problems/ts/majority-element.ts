// https://leetcode.com/problems/majority-element
// 169. Majority Element
// Easy
// Given an array nums of size n, return the majority element.

// The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 

// Example 1:

// Input: nums = [3,2,3]
// Output: 3
// Example 2:

// Input: nums = [2,2,1,1,1,2,2]
// Output: 2
 

// Constraints:

// n == nums.length
// 1 <= n <= 5 * 104
// -109 <= nums[i] <= 109

function majorityElement(nums: number[]): number {
  nums.sort((a, b) => a - b)

  let currentNum = nums[0];
  let currentNumMet = 1;

  for (let i = 1; i < nums.length; i++) {
    if (nums[i] === currentNum) {
      currentNumMet++;

      if (currentNumMet > nums.length / 2) break;
    } else {
      currentNum = nums[i];
      currentNumMet = 1; 
    }
  }
  
  return currentNum;
};