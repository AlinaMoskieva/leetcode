// https://leetcode.com/problems/first-bad-version/
// 278. First Bad Version

// You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.
// Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.
// You are given an API bool isBadVersion(version) which returns whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.

/**
 * The knows API is defined in the parent class Relation.
 * isBadVersion(version: number): boolean {
 *     ...
 * };
 */

// Complexity: T: O(n), S: O(n)
var solution = function(isBadVersion: any) {

  return function(n: number): number {
    let leftPointer = 1;
    let rightPointer = n;

    while (leftPointer < rightPointer) {
      const medium = Math.floor((leftPointer + rightPointer) / 2); 

      if (isBadVersion(medium)) {
        rightPointer = medium;
      } else {
        leftPointer = medium + 1;
      }
    }

    return leftPointer;
  };
};
