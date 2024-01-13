# https :/ / leetcode.com / problems / minimum - number - of - steps - to - make - two - strings - anagram
# 1347. Minimum Number of Steps to Make Two Strings Anagram

# Medium

# Return the minimum number of steps to make t an anagram of s.

# An Anagram of a string is a string that contains the same characters with a different (or the same) ordering.

# Example 1:

# Input: s = "bab", t = "aba"
# Output: 1
# Explanation: Replace the first 'a' in t with b, t = "bba" which is anagram of s.
# Example 2:

# Input: s = "leetcode", t = "practice"
# Output: 5
# Explanation: Replace 'p', 'r', 'a', 'i' and 'c' from t with proper characters to make t anagram of s.
# Example 3:

# Input: s = "anagram", t = "mangaar"
# Output: 0
# Explanation: "anagram" and "mangaar" are anagrams.

# Constraints:

# 1 <= s.length <= 5 * 104
# s.length == t.length
# s and t consist of lowercase English letters only.

# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
  counter = {}
  result = 0

  for i in 0...s.length do
    counter[s[i]] ||= 0
    counter[t[i]] ||= 0

    counter[t[i]] += 1
    counter[s[i]] -= 1
  end

  counter.values.each do |frequency|
    result += [0, frequency].max
  end

  result
end
