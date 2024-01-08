# https://leetcode.com/problems/minimum-absolute-difference-in-bst

# 530. Minimum Absolute Difference in BST
# Easy

# Given the root of a Binary Search Tree (BST), return the minimum absolute difference between the values of any two different nodes in the tree.

# Example 1:

# Input: root = [4,2,6,1,3]
# Output: 1
# Example 2:

# Input: root = [1,0,48,null,null,12,49]
# Output: 1

# Constraints:

# The number of nodes in the tree is in the range [2, 104].
# 0 <= Node.val <= 105

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def inorder_traversal(node)
  return if node.nil?

  inorder_traversal(node.left) if node.left

  @min_diff = [@min_diff, (@previous_value - node.val).abs].min
  @previous_value = node.val

  inorder_traversal(node.right) if node.right
end

def get_minimum_difference(root)
  @min_diff = Float::INFINITY
  @previous_value = Float::INFINITY

  inorder_traversal(root)

  @min_diff
end
