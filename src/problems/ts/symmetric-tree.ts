// https://leetcode.com/problems/symmetric-tree/description/

// 101. Symmetric Tree
// Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).

// Example 1:

// Input: root = [1,2,2,3,4,4,3]
// Output: true
// Example 2:

// Input: root = [1,2,2,null,3,null,3]
// Output: false

// Constraints:

// The number of nodes in the tree is in the range [1, 1000].
// -100 <= Node.val <= 100

// Follow up: Could you solve it both recursively and iteratively?

/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     val: number
 *     left: TreeNode | null
 *     right: TreeNode | null
 *     constructor(val?: number, left?: TreeNode | null, right?: TreeNode | null) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.left = (left===undefined ? null : left)
 *         this.right = (right===undefined ? null : right)
 *     }
 * }
 */

function isSame(
  leftSide: TreeNode | null,
  rightSide: TreeNode | null
): boolean {
  if (leftSide === null && rightSide === null) return true;
  if (leftSide?.val !== rightSide?.val) return false;

  return (
    isSame(leftSide.left, rightSide.right) &&
    isSame(leftSide.right, rightSide.left)
  );
}
function isSymmetric(root: TreeNode | null): boolean {
  return isSame(root.left, root.right);
}

isSymmetric(new TreeNode(1, new TreeNode(2), new TreeNode(2)));
