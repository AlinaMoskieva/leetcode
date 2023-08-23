// https://leetcode.com/problems/first-unique-character-in-a-string

// 387. First Unique Character in a String
// Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

// Example 1:

// Input: s = "leetcode"
// Output: 0
// Example 2:

// Input: s = "loveleetcode"
// Output: 2
// Example 3:

// Input: s = "aabb"
// Output: -1
 

// Constraints:
// 1 <= s.length <= 105
// s consists of only lowercase English letters.

function firstUniqChar(s: string): number {  
  for (let i = 0; i < s.length; i++) {
    if (s.indexOf(s.charAt(i)) === i && s.indexOf(s.charAt(i), i + 1) === -1) return i;
  }

  return -1;
};

console.log(firstUniqChar("leetcode"))
console.log(firstUniqChar("loveleetcode"))
console.log(firstUniqChar("aabb"))

