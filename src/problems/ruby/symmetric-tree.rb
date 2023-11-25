# https://leetcode.com/problems/symmetric-tree
# 101. Symmetric Tree
# Easy
# Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).

# Example 1:

# Input: root = [1,2,2,3,4,4,3]
# Output: true
# Example 2:

# Input: root = [1,2,2,null,3,null,3]
# Output: false

# Constraints:

# The number of nodes in the tree is in the range [1, 1000].
# -100 <= Node.val <= 100
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
# @return {Boolean}
# Complexity T: O(n), S: O(n)
def is_same(right_root, left_root)
  return true if right_root.nil? && left_root.nil?
  return false if right_root&.val != left_root&.val

  is_same(right_root.right, left_root.left) && is_same(right_root.left, left_root.right)
end

def is_symmetric(root)
  return true unless root

  is_same(root.right, root.left)
end
