# https://leetcode.com/problems/minimum-changes-to-make-alternating-binary-string/description/
# 1758. Minimum Changes To Make Alternating Binary String
# Easy

# You are given a string s consisting only of the characters '0' and '1'. In one operation, you can change any '0' to '1' or vice versa.
#
# The string is called alternating if no two adjacent characters are equal. For example, the string "010" is alternating, while the string "0100" is not.
#
# Return the minimum number of operations needed to make s alternating.
#
# Example 1:
# Input: s = "0100"
# Output: 1
# Explanation: If you change the last character to '1', s will be "0101", which is alternating.

# Example 2:
# Input: s = "10"
# Output: 0
# Explanation: s is already alternating.

# Example 3:
# Input: s = "1111"
# Output: 2
# Explanation: You need two operations to reach "0101" or "1010".

# Constraints:
# 1 <= s.length <= 104
# s[i] is either '0' or '1'.

# @param {String} s
# @return {Integer}
def min_operations(s)
  start_with_0, start_with_1 = 0, 0

  for i in 0...s.length do
    if i % 2 == 0
      s[i] == "1" ? start_with_0 += 1 : start_with_1 += 1
    else
      s[i] == "0" ? start_with_0 += 1 : start_with_1 += 1
    end
  end

  [start_with_0, start_with_1].min
end