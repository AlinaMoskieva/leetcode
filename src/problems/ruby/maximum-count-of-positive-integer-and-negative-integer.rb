# https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer

# 2529. Maximum Count of Positive Integer and Negative Integer
# Easy

# Given an array nums sorted in non-decreasing order, return the maximum between the number of positive integers and the number of negative integers.

# In other words, if the number of positive integers in nums is pos and the number of negative integers is neg, then return the maximum of pos and neg.
# Note that 0 is neither positive nor negative.

# Example 1:

# Input: nums = [-2,-1,-1,1,2,3]
# Output: 3
# Explanation: There are 3 positive integers and 3 negative integers. The maximum count among them is 3.
# Example 2:

# Input: nums = [-3,-2,-1,0,0,1,2]
# Output: 3
# Explanation: There are 2 positive integers and 3 negative integers. The maximum count among them is 3.
# Example 3:

# Input: nums = [5,20,66,1314]
# Output: 4
# Explanation: There are 4 positive integers and 0 negative integers. The maximum count among them is 4.

# Using Binary Search T: O(log n)
def maximum_count(nums)
  left = 0
  right = nums.length - 1

  return 0 if nums[left] == 0 && nums[right] == 0

  while left <= right
    index = (left + right) / 2

    if nums[index] < 0 && !nums[index + 1].nil? && nums[index + 1] >= 0
      positive_num_index = index + 1

      positive_num_index += 1 while nums[positive_num_index] == 0 && positive_num_index < nums.length - 1

      return [index + 1, nums.length - positive_num_index].max
    end

    if nums[index] >= 0
      right = index - 1
    else
      left = index + 1
    end
  end

  if index <= 0
    index += 1 while nums[index] == 0 && index < nums.length - 1

    return nums.length - index
  end

  nums.length
end

# Using Ruby methods, Complexity: T: O(n)
def maximum_count(nums)
  [nums.count(&:positive?), nums.count(&:negative?)].max
end
