// https://leetcode.com/problems/intersection-of-two-arrays-ii/
// Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.

// Example 1:

// Input: nums1 = [1,2,2,1], nums2 = [2,2]
// Output: [2,2]
// Example 2:

// Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
// Output: [4,9]
// Explanation: [9,4] is also accepted.

// Constraints:

// 1 <= nums1.length, nums2.length <= 1000
// 0 <= nums1[i], nums2[i] <= 1000

function recordElement(element: number, statistics: Map<number, number>): void {
  if (element == undefined) return;

  if (statistics.get(element) === undefined) {
    statistics.set(element, 1);
  } else {
    statistics.set(element, statistics.get(element) + 1);
  }
}

function findIntersectionsFrom(
  elementsStatisticsNums1: Map<number, number>,
  elementsStatisticsNums2: Map<number, number>
): number[] {
  let intersections: number[] = [];

  elementsStatisticsNums1.forEach((frequency, number) => {
    if (elementsStatisticsNums2.get(number) !== undefined) {
      intersections.push(
        ...Array(Math.min(frequency, elementsStatisticsNums2.get(number))).fill(
          number
        )
      );
    }
  });

  return intersections;
}

function intersect(nums1: number[], nums2: number[]): number[] {
  let elementsStatisticsNums1: Map<number, number> = new Map();
  let elementsStatisticsNums2: Map<number, number> = new Map();

  for (let i = 0; i < Math.max(nums1.length, nums2.length); i++) {
    recordElement(nums1[i], elementsStatisticsNums1);
    recordElement(nums2[i], elementsStatisticsNums2);
  }

  return elementsStatisticsNums1.size < elementsStatisticsNums2.size
    ? findIntersectionsFrom(elementsStatisticsNums1, elementsStatisticsNums2)
    : findIntersectionsFrom(elementsStatisticsNums2, elementsStatisticsNums1);
}

console.log(intersect([1, 2, 2, 1], [2, 2, 3, 4]));
console.log(intersect([4, 9, 5], [9, 4, 9, 8, 4]));
