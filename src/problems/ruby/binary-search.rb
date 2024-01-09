# https://leetcode.com/problems/binary-search
# 704. Binary Search
# Easy

# Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

# You must write an algorithm with O(log n) runtime complexity.

# Example 1:

# Input: nums = [-1,0,3,5,9,12], target = 9
# Output: 4
# Explanation: 9 exists in nums and its index is 4
# Example 2:

# Input: nums = [-1,0,3,5,9,12], target = 2
# Output: -1
# Explanation: 2 does not exist in nums so return -1

# Constraints:

# 1 <= nums.length <= 104
# -104 < nums[i], target < 104
# All the integers in nums are unique.
# nums is sorted in ascending order.

def search(nums, target)
  left = 0
  right = nums.length - 1

  while left <= right
    current_index = (left + right) / 2

    return current_index if nums[current_index] == target

    if nums[current_index] > target
      right = current_index - 1
    else
      left = current_index + 1
    end
  end

  -1
end
