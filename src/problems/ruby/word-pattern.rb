# https://leetcode.com/problems/word-pattern
# 290. Word Pattern
# Easy
# Given a pattern and a string s, find if s follows the same pattern.

# Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s.

 

# Example 1:

# Input: pattern = "abba", s = "dog cat cat dog"
# Output: true
# Example 2:

# Input: pattern = "abba", s = "dog cat cat fish"
# Output: false
# Example 3:

# Input: pattern = "aaaa", s = "dog cat cat dog"
# Output: false
 

# Constraints:

# 1 <= pattern.length <= 300
# pattern contains only lower-case English letters.
# 1 <= s.length <= 3000
# s contains only lowercase English letters and spaces ' '.
# s does not contain any leading or trailing spaces.
# All the words in s are separated by a single space.

# Complexity: T: O(n), S: O(n)
def word_pattern(pattern, s)
  dictionary = {}
  pattern, s = pattern.split(""), s.split(" ")

  return false if pattern.length != s.length

  pattern.length.times do |i|
    if dictionary[pattern[i]]
      return false if dictionary[pattern[i]] != s[i]
    else
      return false if dictionary.value?(s[i])
     
      dictionary[pattern[i]] = s[i]
    end
  end

  true
end