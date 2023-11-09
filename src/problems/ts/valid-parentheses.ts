// https://leetcode.com/problems/valid-parentheses/
//     20. Valid Parentheses
// Easy
// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//     An input string is valid if:
//
// Open brackets must be closed by the same type of brackets.
//     Open brackets must be closed in the correct order.
//     Every close bracket has a corresponding open bracket of the same type.
//
//
//     Example 1:
//
// Input: s = "()"
// Output: true
// Example 2:
//
// Input: s = "()[]{}"
// Output: true
// Example 3:
//
// Input: s = "(]"
// Output: false
//
//
// Constraints:
//
//     1 <= s.length <= 104
// s consists of parentheses only '()[]{}'.

function isValid(s: string): boolean {
  const openBrackets: string[] = ['(', '{', '['];
  const closeBrackets: string[] = [')', '}', ']'];
  let currentOpened: string[] = [];

  for (let i = 0; i < s.length; i++) {
    if (openBrackets.includes(s[i])) {
      currentOpened.push(s[i]);
    } else {
      const lastOpened: string = currentOpened.pop();
      const closeBracketIndex: number = closeBrackets.indexOf(s[i]);
      if (lastOpened != openBrackets[closeBracketIndex]) {
        return false;
      }
    }
  }

  if (currentOpened.length > 0) return false;

  return true;
}
