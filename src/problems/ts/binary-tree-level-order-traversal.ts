// https://leetcode.com/problems/binary-tree-level-order-traversal/

// 102. Binary Tree Level Order Traversal
// Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).


// Example 1:
// Input: root = [3,9,20,null,null,15,7]
// Output: [[3],[9,20],[15,7]]


//  Definition for a binary tree node.
class TreeNode {
  val: number
  left: TreeNode | null
  right: TreeNode | null
  
  constructor(val?: number, left?: TreeNode | null, right?: TreeNode | null) {
    this.val = (val===undefined ? 0 : val)
    this.left = (left===undefined ? null : left)
    this.right = (right===undefined ? null : right)
  }
}

// Complexity: T: O(n), S: O(n)
function levelOrder(root: TreeNode | null): number[][] {
  if (!root) return [];

  let result: number[][] = [];
  let queue: TreeNode[] = [root];

  while (queue.length) {
    let length = queue.length;

    result.push(queue.map(node => node.val));

    while (length--) {
      let node: TreeNode = queue.shift();

      if (node.left) queue.push(node.left);
      if (node.right) queue.push(node.right);
    }
  }

  return result;
};