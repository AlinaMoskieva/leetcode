# https://leetcode.com/problems/search-insert-position

# 35. Search Insert Position
# Solved
# Easy

# Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

# You must write an algorithm with O(log n) runtime complexity.

# Example 1:

# Input: nums = [1,3,5,6], target = 5
# Output: 2
# Example 2:

# Input: nums = [1,3,5,6], target = 2
# Output: 1
# Example 3:

# Input: nums = [1,3,5,6], target = 7
# Output: 4

# Constraints:

# 1 <= nums.length <= 104
# -104 <= nums[i] <= 104
# nums contains distinct values sorted in ascending order.
# -104 <= target <= 104

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  left = 0
  right = nums.length - 1

  while left <= right
    mid = (left + right) / 2

    return mid if nums[mid] == target

    if nums[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end

  left
end
