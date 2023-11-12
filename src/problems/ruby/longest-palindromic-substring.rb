# https://leetcode.com/problems/longest-palindromic-substring/
# 5. Longest Palindromic Substring
# Medium
# Given a string s, return the longest 
# palindromic
 
# substring
#  in s.

 

# Example 1:

# Input: s = "babad"
# Output: "bab"
# Explanation: "aba" is also a valid answer.
# Example 2:

# Input: s = "cbbd"
# Output: "bb"
 

# Constraints:

# 1 <= s.length <= 1000
# s consist of only digits and English letters.

# @param {String} s
# @return {String}

def check_for_palindrome(start_pointer, end_pointer, s, longest_palindrome)
  while (start_pointer >= 0 && end_pointer < s.length && s[start_pointer] == s[end_pointer]) do
    start_pointer -= 1
    end_pointer += 1
  end

  current_palindrome = s[start_pointer + 1..end_pointer - 1]

  longest_palindrome.length < current_palindrome.length ? current_palindrome : longest_palindrome
end

def longest_palindrome(s)
  longest_palindrome = ""

  for i in 0...s.length
    # Check for palindroms with odd length, example: bab
    start_pointer, end_pointer = i, i
    longest_palindrome = check_for_palindrome(start_pointer, end_pointer, s, longest_palindrome)
    
    # Check for palindroms with even length, example: bb
    start_pointer, end_pointer = i, i + 1
    longest_palindrome = check_for_palindrome(start_pointer, end_pointer, s, longest_palindrome)
  end

  longest_palindrome
end

puts longest_palindrome("babadab")
puts longest_palindrome("ba")
puts longest_palindrome("ccc")
