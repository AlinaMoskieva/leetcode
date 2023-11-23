# https://leetcode.com/problems/valid-parentheses
# 20. Valid Parentheses
# Easy
# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.
 

# Example 1:

# Input: s = "()"
# Output: true
# Example 2:

# Input: s = "()[]{}"
# Output: true
# Example 3:

# Input: s = "(]"
# Output: false
 

# Constraints:

# 1 <= s.length <= 104
# s consists of parentheses only '()[]{}'.

# @param {String} s
# @return {Boolean}

BRACKETS = { "(" => ")", "[" => "]", "{" => "}" }.freeze

def is_valid(s)
  stack = []

  s.each_char do |bracket|
    if BRACKETS.keys.include? bracket
      stack.push(bracket)
    else
      return false if BRACKETS[stack.pop] != bracket
    end
  end

  stack.empty?
end