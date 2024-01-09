# https://leetcode.com/problems/leaf-similar-trees

# 872. Leaf-Similar Trees
# Easy

# Consider all the leaves of a binary tree, from left to right order, the values of those leaves form a leaf value sequence.

# For example, in the given tree above, the leaf value sequence is (6, 7, 4, 9, 8).

# Two binary trees are considered leaf-similar if their leaf value sequence is the same.

# Return true if and only if the two given trees with head nodes root1 and root2 are leaf-similar.

# Example 1:

# Input: root1 = [3,5,1,6,2,9,8,null,null,7,4], root2 = [3,5,1,6,7,4,2,null,null,null,null,null,null,9,8]
# Output: true
# Example 2:

# Input: root1 = [1,2,3], root2 = [1,3,2]
# Output: false

# Constraints:

# The number of nodes in each tree will be in the range [1, 200].
# Both of the given trees will have values in the range [0, 200].

def dfs_traversal(node, storage)
  return if node.nil?

  storage.push(node.val) if node.right.nil? && node.left.nil?

  dfs_traversal(node.left, storage)
  dfs_traversal(node.right, storage)
end

def leaf_similar(root1, root2)
  leafs_1 = []
  leafs_2 = []

  dfs_traversal(root1, leafs_1)
  dfs_traversal(root2, leafs_2)

  leafs_1 == leafs_2
end
