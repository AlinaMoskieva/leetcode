# https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string
# 28. Find the Index of the First Occurrence in a String
# Easy
# 5.1K
# 303
# Companies
# Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

 

# Example 1:

# Input: haystack = "sadbutsad", needle = "sad"
# Output: 0
# Explanation: "sad" occurs at index 0 and 6.
# The first occurrence is at index 0, so we return 0.
# Example 2:

# Input: haystack = "leetcode", needle = "leeto"
# Output: -1
# Explanation: "leeto" did not occur in "leetcode", so we return -1.
 

# Constraints:

# 1 <= haystack.length, needle.length <= 104
# haystack and needle consist of only lowercase English characters.

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str_using_regex(haystack, needle)
  haystack =~ /#{needle}/ || -1
end

def str_str(haystack, needle)
  return -1 if needle.empty? || needle.length > haystack.length

  index, pointer, needle_prefix_pointer = 0, nil, 0

  while index < haystack.length do
    char = haystack[index]

    if char == needle[needle_prefix_pointer]
      pointer ||= index
      needle_prefix_pointer += 1
      break if needle_prefix_pointer == needle.length
    else
      index, pointer, needle_prefix_pointer = pointer, nil, 0 unless pointer.nil?
    end   

    index += 1
  end

  return -1 if needle_prefix_pointer != needle.length || pointer.nil?

  pointer
end
