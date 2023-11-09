// https://leetcode.com/problems/longest-common-prefix/

// 14. Longest Common Prefix

// Write a function to find the longest common prefix string amongst an array of strings.

// If there is no common prefix, return an empty string "".

// Example 1:

// Input: strs = ["flower","flow","flight"]
// Output: "fl"
// Example 2:

// Input: strs = ["dog","racecar","car"]
// Output: ""
// Explanation: There is no common prefix among the input strings.

// Constraints:

// 1 <= strs.length <= 200
// 0 <= strs[i].length <= 200
// strs[i] consists of only lowercase English letters.

function isTheSameLetterAt(
  letterPosition: number,
  setOfSrigs: string[]
): boolean {
  for (let i = 1; i < setOfSrigs.length; i++) {
    if (
      setOfSrigs[i].length < letterPosition ||
      setOfSrigs[0].charAt(letterPosition) !==
        setOfSrigs[i].charAt(letterPosition)
    )
      return false;
  }

  return true;
}

function longestCommonPrefix(strs: string[]): string {
  if (strs.length == 1) return strs[0];

  let lastPrexixLetterPosition = 0;
  let continueSerching: boolean = true;

  while (continueSerching) {
    if (isTheSameLetterAt(lastPrexixLetterPosition, strs)) {
      lastPrexixLetterPosition++;
    } else {
      continueSerching = false;
    }
  }

  return strs[0].substring(0, lastPrexixLetterPosition);
}

console.log(longestCommonPrefix(['flower', 'flow', 'flight']));
console.log(longestCommonPrefix(['dog', 'racecar', 'car']));
console.log(longestCommonPrefix(['']));
console.log(longestCommonPrefix(['flower', 'flower', 'flower', 'flower']));
