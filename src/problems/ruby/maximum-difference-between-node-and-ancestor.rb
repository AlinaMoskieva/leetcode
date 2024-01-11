# https://leetcode.com/problems/maximum-difference-between-node-and-ancestor
# 1026. Maximum Difference Between Node and Ancestor
# Medium

# A node a is an ancestor of b if either: any child of a is equal to b or any child of a is an ancestor of b.

# Example 1:

# Input: root = [8,3,10,1,6,null,14,null,null,4,7,13]
# Output: 7
# Explanation: We have various ancestor-node differences, some of which are given below :
# |8 - 3| = 5
# |3 - 7| = 4
# |8 - 1| = 7
# |10 - 13| = 3
# Among all possible differences, the maximum value of 7 is obtained by |8 - 1| = 7.
# Example 2:

# Input: root = [1,null,2,null,0,3]
# Output: 3

# Constraints:

# The number of nodes in the tree is in the range [2, 5000].
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

def dfs(root, min, max)
  return unless root

  @max_diff = [@max_diff, (root.val - min).abs, (root.val - max).abs].max
  min = [min, root.val].min
  max = [max, root.val].max

  dfs(root.left, min, max)
  dfs(root.right, min, max)
end

def max_ancestor_diff(root)
  @max_diff = 0
  dfs(root, root.val, root.val)

  @max_diff
end
