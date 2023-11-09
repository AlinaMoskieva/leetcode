// https://leetcode.com/problems/valid-palindrome/
// 125. Valid Palindrome
// A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

// Given a string s, return true if it is a palindrome, or false otherwise.

// Example 1:

// Input: s = "A man, a plan, a canal: Panama"
// Output: true
// Explanation: "amanaplanacanalpanama" is a palindrome.
// Example 2:

// Input: s = "race a car"
// Output: false
// Explanation: "raceacar" is not a palindrome.
// Example 3:

// Input: s = " "
// Output: true
// Explanation: s is an empty string "" after removing non-alphanumeric characters.
// Since an empty string reads the same forward and backward, it is a palindrome.

// Constraints:

// 1 <= s.length <= 2 * 105
// s consists only of printable ASCII characters.

function isPalindrome1(s: string): boolean {
  const preparedString: string = s.toLowerCase().replace(/[^a-z0-9]/g, '');

  return preparedString === preparedString.split('').reverse().join('');
}

function isPalindrome(s: string): boolean {
  const preparedString: string = s.toLowerCase().replace(/[^a-z0-9]/g, '');

  for (let i = 0; i < preparedString.length / 2; i++) {
    if (
      preparedString.charAt(i) !==
      preparedString.charAt(preparedString.length - i - 1)
    )
      return false;
  }

  return true;
}

isPalindrome1('A man, a plan, a canal: Panama'); // true
isPalindrome('race a car'); // false
isPalindrome(' '); // true
isPalindrome('ab_a'); // true
isPalindrome('0P'); // false
