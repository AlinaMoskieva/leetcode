# https://leetcode.com/problems/average-of-levels-in-binary-tree

# 637. Average of Levels in Binary Tree
# Easy
# Given the root of a binary tree, return the average value of the nodes on each level in the form of an array. Answers within 10-5 of the actual answer will be accepted.

# Example 1:

# Input: root = [3,9,20,null,null,15,7]
# Output: [3.00000,14.50000,11.00000]
# Explanation: The average value of nodes on level 0 is 3, on level 1 is 14.5, and on level 2 is 11.
# Hence return [3, 14.5, 11].
# Example 2:

# Input: root = [3,9,20,15,7]
# Output: [3.00000,14.50000,11.00000]

# Constraints:

# The number of nodes in the tree is in the range [1, 104].
# -231 <= Node.val <= 231 - 1

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
# @return {Float[]}
def bfs(node, dept)
  return unless node

  @average_of_levels[dept] ||= 0
  @numbers_of_nodes[dept] ||= 0

  @average_of_levels[dept] =
    (@average_of_levels[dept] * @numbers_of_nodes[dept].to_f + node.val) / (@numbers_of_nodes[dept] + 1)
  @numbers_of_nodes[dept] += 1

  bfs(node.right, dept + 1)
  bfs(node.left, dept + 1)
end

def average_of_levels(root)
  @average_of_levels = []
  @numbers_of_nodes = []

  bfs(root, 0)

  @average_of_levels
end
