// https://leetcode.com/problems/reverse-integer/
// 7. Reverse Integer

// Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

// Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

// Example 1:

// Input: x = 123
// Output: 321
// Example 2:

// Input: x = -123
// Output: -321
// Example 3:

// Input: x = 120
// Output: 21

// Constraints:

// -231 <= x <= 231 - 1

function reverse(x: number): number {
  const resultedAbsoluteNumber: number = Number(
    String(Math.abs(x)).split('').reverse().join('')
  );

  return resultedAbsoluteNumber >= 2 ** 31
    ? 0
    : Math.sign(x) * resultedAbsoluteNumber;
}

reverse(-123);
reverse(123);
reverse(1230);
reverse(1534236469);
