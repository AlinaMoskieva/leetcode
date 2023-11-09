# https://leetcode.com/problems/power-of-three/
# 326. Power of Three
# Given an integer n, return true if it is a power of three. Otherwise, return false.

# An integer n is a power of three, if there exists an integer x such that n == 3x.

# Example 1:

# Input: n = 27
# Output: true
# Explanation: 27 = 33
# Example 2:

# Input: n = 0
# Output: false
# Explanation: There is no x where 3x = 0.
# Example 3:

# Input: n = -1
# Output: false
# Explanation: There is no x where 3x = (-1).
 
# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  return false if n <= 0

  while (n > 1) do
    if n % 3 != 0
      return false
    else
      n /= 3
    end
  end

  true
end
