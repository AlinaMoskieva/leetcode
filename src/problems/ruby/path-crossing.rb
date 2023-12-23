# https://leetcode.com/problems/path-crossing

# 1496. Path Crossing
# Easy
# 1.1K
# 31
# Companies
# Given a string path, where path[i] = 'N', 'S', 'E' or 'W', each representing moving one unit north, south, east, or west, respectively. You start at the origin (0, 0) on a 2D plane and walk on the path specified by path.

# Return true if the path crosses itself at any point, that is, if at any time you are on a location you have previously visited. Return false otherwise.

# Example 1:

# Input: path = "NES"
# Output: false
# Explanation: Notice that the path doesn't cross any point more than once.
# Example 2:

# Input: path = "NESWW"
# Output: true
# Explanation: Notice that the path visits the origin twice.

# Constraints:

# 1 <= path.length <= 104
# path[i] is either 'N', 'S', 'E', or 'W'.

# @param {String} path
# @return {Boolean}
def is_path_crossing(path)
  current_x = 0
  current_y = 0
  visited_points = [[current_x, current_y]]

  path.each_char do |direction|
    current_y += 1 if direction == 'N'
    current_y -= 1 if direction == 'S'
    current_x += 1 if direction == 'E'
    current_x -= 1 if direction == 'W'

    return true if visited_points.include? [current_x, current_y]

    visited_points.push([current_x, current_y])
  end

  false
end
