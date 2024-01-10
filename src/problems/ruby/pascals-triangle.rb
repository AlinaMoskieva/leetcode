# https://leetcode.com/problems/pascals-triangle/description/
# 118. Pascal's Triangle
# Easy

# Given an integer numRows, return the first numRows of Pascal's triangle.

# In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

# Example 1:

# Input: numRows = 5
# Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
# Example 2:

# Input: numRows = 1
# Output: [[1]]

# Constraints:

# 1 <= numRows <= 30

#  T: O(n^2), S: O(n^2)
# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  triangle = [[1]]

  for i in 1...num_rows do
    temp = [0] + triangle[i - 1] + [0]
    current_row = []
    for j in 0...triangle[i - 1].length + 1 do
      current_row.push(temp[j] + temp[j + 1])
    end

    triangle.push(current_row)
  end

  triangle
end
