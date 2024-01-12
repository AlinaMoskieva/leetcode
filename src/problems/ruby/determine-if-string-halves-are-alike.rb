# https://leetcode.com/problems/determine-if-string-halves-are-alike
# 1704. Determine if String Halves Are Alike

# Easy

# Two strings are alike if they have the same number of vowels ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'). Notice that s contains uppercase and lowercase letters.

# Return true if a and b are alike. Otherwise, return false.

# Example 1:

# Input: s = "book"
# Output: true
# Explanation: a = "bo" and b = "ok". a has 1 vowel and b has 1 vowel. Therefore, they are alike.
# Example 2:

# Input: s = "textbook"
# Output: false
# Explanation: a = "text" and b = "book". a has 1 vowel whereas b has 2. Therefore, they are not alike.
# Notice that the vowel o is counted twice.

# Constraints:

# 2 <= s.length <= 1000
# s.length is even.
# s consists of uppercase and lowercase letters.

# @param {String} s
# @return {Boolean}

VOWELS = %w[a e i o u].freeze
def halves_are_alike(s)
  dictionary = VOWELS.to_h { |vowel| [vowel, 0] }
  s.downcase!

  for i in 0...s.length / 2 do
    dictionary[s[i]] += 1 if dictionary.key? s[i]
    dictionary[s[i + s.length / 2]] -= 1 if dictionary.key? s[i + s.length / 2]
  end

  dictionary.values.sum == 0
end

VOWELS_STRING = 'aeiou'.freeze

def halves_are_alike(s)
  vowes_counter = 0
  s.downcase!

  for i in 0...s.length / 2 do
    vowes_counter += 1 if VOWELS_STRING.include? s[i]
    vowes_counter -= 1 if VOWELS_STRING.include? s[i + s.length / 2]
  end

  vowes_counter == 0
end
