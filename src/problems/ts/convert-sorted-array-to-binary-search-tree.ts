// https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/
// 108. Convert Sorted Array to Binary Search Tree
// Given an integer array nums where the elements are sorted in ascending order, convert it to a
// height-balanced binary search tree.

class TreeNode {
  val: number;
  left: TreeNode | null;
  right: TreeNode | null;

  constructor(val?: number, left?: TreeNode | null, right?: TreeNode | null) {
    this.val = val === undefined ? 0 : val;
    this.left = left === undefined ? null : left;
    this.right = right === undefined ? null : right;
  }
}

// Complexity: O(n): T, O(n): S
function sortedArrayToBST(
  nums: number[],
  leftPointer: number = 0,
  rightPointer: number = nums.length - 1
): TreeNode | null {
  if (leftPointer > rightPointer) return null;

  let midPointer = Math.floor((leftPointer + rightPointer) / 2);
  let root: TreeNode = new TreeNode(nums[midPointer]);

  root.left = sortedArrayToBST(nums, leftPointer, midPointer - 1);
  root.right = sortedArrayToBST(nums, midPointer + 1, rightPointer);

  return root;
}
