# https://leetcode.com/problems/ransom-note

# 383. Ransom Note
# Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

# Each letter in magazine can only be used once in ransomNote.


# Example 1:

# Input: ransomNote = "a", magazine = "b"
# Output: false
# Example 2:

# Input: ransomNote = "aa", magazine = "ab"
# Output: false
# Example 3:

# Input: ransomNote = "aa", magazine = "aab"
# Output: true
 

# Constraints:

# 1 <= ransomNote.length, magazine.length <= 105
# ransomNote and magazine consist of lowercase English letters.

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
# def update_dictionary(dictionary, letter, count)
#   dictionary[letter] ? dictionary[letter] += count : dictionary[letter] = count
# end

# def can_construct(ransom_note, magazine)
#   letters = {}
#   for i in (0...[ransom_note.length, magazine.length].max) do
#     update_dictionary(letters, ransom_note[i], -1) unless ransom_note[i].nil?

#     update_dictionary(letters, magazine[i], 1) unless magazine[i].nil? || ransom_note.index(magazine[i]).nil?
#   end
  
#   (letters.values&.min || -1) >= 0  
# end

# Complexity: T: O(m + n), S: (c), where c is the number of unique chars
def can_construct(ransom_note, magazine)
  magazine_dictionary = magazine.chars.inject(Hash.new(0)) { |memo, key| memo[key] += 1; memo } 

  ransom_note.each_char do |char|
    return false if magazine_dictionary[char].nil? || magazine_dictionary[char] == 0
    magazine_dictionary[char] -= 1
  end

  true
end