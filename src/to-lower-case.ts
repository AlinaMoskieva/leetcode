// https://leetcode.com/problems/to-lower-case/
// 709. To Lower Case
// Given a string s, return the string after replacing every uppercase letter with the same lowercase letter.

 

// Example 1:

// Input: s = "Hello"
// Output: "hello"
// Example 2:

// Input: s = "here"
// Output: "here"
// Example 3:

// Input: s = "LOVELY"
// Output: "lovely"
 

// Constraints:

// 1 <= s.length <= 100
// s consists of printable ASCII characters.

function toLowerCase(s: string): string {
  const codePositionDifference = "a".charCodeAt(0) - "A".charCodeAt(0);
  const firstUpperCaseCharCode = "A".charAt(0);
  const lastUpperCaseCharCode = "Z".charAt(0);

  return s
    .split("")
    .map((value) =>
      value.charAt(0) >= firstUpperCaseCharCode &&
      value.charAt(0) <= lastUpperCaseCharCode
        ? String.fromCharCode(value.charCodeAt(0) + codePositionDifference)
        : value
    )
    .join("");
}

toLowerCase("Hello")