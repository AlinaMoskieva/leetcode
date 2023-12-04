# https://leetcode.com/problems/3sum
# 15. 3Sum
# Medium
# Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

# Notice that the solution set must not contain duplicate triplets.

# Example 1:

# Input: nums = [-1,0,1,2,-1,-4]
# Output: [[-1,-1,2],[-1,0,1]]
# Explanation:
# nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
# nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
# nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
# The distinct triplets are [-1,0,1] and [-1,-1,2].
# Notice that the order of the output and the order of the triplets does not matter.
# Example 2:

# Input: nums = [0,1,1]
# Output: []
# Explanation: The only possible triplet does not sum up to 0.
# Example 3:

# Input: nums = [0,0,0]
# Output: [[0,0,0]]
# Explanation: The only possible triplet sums up to 0.

# Constraints:

# 3 <= nums.length <= 3000
# -105 <= nums[i] <= 105

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  triplets = []

  return triplets if nums.length < 3

  nums.sort!

  nums.each_with_index do |num, index|
    next if index > 0 && num == nums[index - 1]

    left_pointer = index + 1
    right_pointer = nums.length - 1

    while left_pointer < right_pointer
      sum = num + nums[left_pointer] + nums[right_pointer]

      if sum == 0
        triplets.push([num, nums[left_pointer], nums[right_pointer]])
        left_pointer += 1

        left_pointer += 1 while nums[left_pointer] == nums[left_pointer - 1] && left_pointer < right_pointer
      elsif sum < 0
        left_pointer += 1
      else
        right_pointer -= 1
      end
    end
  end

  triplets
end
