# https://leetcode.com/problems/contains-duplicate-ii

# 219. Contains Duplicate II
# Easy
# Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

# Example 1:

# Input: nums = [1,2,3,1], k = 3
# Output: true
# Example 2:

# Input: nums = [1,0,1,1], k = 1
# Output: true
# Example 3:

# Input: nums = [1,2,3,1,2,3], k = 2
# Output: false
 

# Constraints:

# 1 <= nums.length <= 105
# -109 <= nums[i] <= 109
# 0 <= k <= 105
# Accepted
# 798.7K

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  digits = {}

  nums.each_with_index do |number, index|
    return true if digits[number] && (digits[number] - index).abs <= k

    digits[number] = index
  end
  
  false
end
