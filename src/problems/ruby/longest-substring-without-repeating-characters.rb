# https://leetcode.com/problems/longest-substring-without-repeating-characters/
# 3. Longest Substring Without Repeating Characters
# Medium
# Given a string s, find the length of the longest 
# substring
#  without repeating characters.

 

# Example 1:

# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.
# Example 2:

# Input: s = "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.
# Example 3:

# Input: s = "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
# Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 

# Constraints:

# 0 <= s.length <= 5 * 104
# s consists of English letters, digits, symbols and spaces.

# @param {String} s
# @return {Integer}
def length_of_longest_substring_using_window(s)
  max_lenght, window = 0, ""

  s.each_char do |char|
    if (window.include? char) 
      max_lenght = [max_lenght, window.length].max
      window = window[window.index(char) + 1..window.length]
    end
      window << char
  end

  max_lenght = [max_lenght, window.length].max

  max_lenght
end

# Using index of window
def length_of_longest_substring(s)
  max_lenght, start = 0, 0

  s.each_char.with_index do |char, index|
    if (index > 0 && s[start..index - 1].include?(char))
      max_lenght = [max_lenght, index - start].max

      start = s.index(char, start) + 1
    end
  end

  max_lenght = [max_lenght, s.length - start].max

  max_lenght
end

puts length_of_longest_substring("abcabcbb")
puts length_of_longest_substring("bbbbb")
puts length_of_longest_substring("pwwkew")
puts length_of_longest_substring("dvdf")
puts length_of_longest_substring(" ")
puts length_of_longest_substring("aab")