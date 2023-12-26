# https://leetcode.com/problems/number-of-dice-rolls-with-target-sum/

# 1155. Number of Dice Rolls With Target Sum
# Medium

# You have n dice, and each die has k faces numbered from 1 to k.

# Given three integers n, k, and target, return the number of possible ways (out of the kn total ways) to roll the dice, so the sum of the face-up numbers equals target. Since the answer may be too large, return it modulo 109 + 7.

# Example 1:

# Input: n = 1, k = 6, target = 3
# Output: 1
# Explanation: You throw one die with 6 faces.
# There is only one way to get a sum of 3.
# Example 2:

# Input: n = 2, k = 6, target = 7
# Output: 6
# Explanation: You throw two dice, each with 6 faces.
# There are 6 ways to get a sum of 7: 1+6, 2+5, 3+4, 4+3, 5+2, 6+1.
# Example 3:

# Input: n = 30, k = 30, target = 500
# Output: 222616187
# Explanation: The answer must be returned modulo 109 + 7.

# Constraints:

# 1 <= n, k <= 30
# 1 <= target <= 1000

# @param {Integer} n
# @param {Integer} k
# @param {Integer} target
# @return {Integer}

def num_rolls_to_target(dices, faces, target)
  return 0 if target < 0 || dices == 0 && target != 0 || dices != 0 && target == 0

  table = Array.new(dices) { Array.new(target + 1, 0) }
  mod = (10**9) + 7

  (1..target).each do |column|
    break if column > faces

    table[0][column] = 1
  end

  (1...dices).each do |row|
    (1..target).each do |col|
      (1..faces).each do |face|
        next if 0 > col - face

        table[row][col] = (table[row][col] + table[row - 1][col - face]) % mod
      end
    end
  end

  table[dices - 1][target]
end
