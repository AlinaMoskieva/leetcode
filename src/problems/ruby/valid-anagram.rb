# https://leetcode.com/problems/valid-anagram
# 242. Valid Anagram
# Easy
# Given two strings s and t, return true if t is an anagram of s, and false otherwise.

# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.


# Example 1:

# Input: s = "anagram", t = "nagaram"
# Output: true
# Example 2:

# Input: s = "rat", t = "car"
# Output: false
 

# Constraints:

# 1 <= s.length, t.length <= 5 * 104
# s and t consist of lowercase English letters.
 

# Follow up: What if the inputs contain Unicode characters? How would you adapt your solution to such a case?

# @param {String} s
# @param {String} t
# @return {Boolean}
def add_to_dictionary(letter, dictionary, increment_by)
  dictionary[letter] ? dictionary[letter] += increment_by: dictionary[letter] = increment_by
end

def is_anagram(s, t)
  return false if s.length != t.length

  dictionary = {}

  for i in 0...s.length do
    add_to_dictionary(s[i], dictionary, 1)
    add_to_dictionary(t[i], dictionary, -1)
  end
  
  !dictionary.values.any? { |count| count != 0 }
end