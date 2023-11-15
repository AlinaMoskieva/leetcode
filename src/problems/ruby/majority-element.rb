# https://leetcode.com/problems/majority-element
# 169. Majority Element
# Easy
# Given an array nums of size n, return the majority element.

# The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 

# Example 1:

# Input: nums = [3,2,3]
# Output: 3
# Example 2:

# Input: nums = [2,2,1,1,1,2,2]
# Output: 2
 

# Constraints:

# n == nums.length
# 1 <= n <= 5 * 104
# -109 <= nums[i] <= 109

# @param {Integer[]} nums
# @return {Integer}

def majority_element(nums)
  nums.sort!
  current_met_number, current_num = 1, nums[0]

  for i in 1..nums.length - 1
      if nums[i] == current_num
          current_met_number += 1

          break if current_met_number > nums.length / 2
      else
         current_met_number, current_num = 1, nums[i]
      end
  end

  current_num
end

def majority_element_using_tally(nums)
  nums.tally.find { |elem| elem.last > nums.length / 2 }.first
end

puts majority_element_using_tally([3,2,3])
# puts majority_element([-1,1,1,1,2,1])