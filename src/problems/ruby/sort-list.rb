# https://leetcode.com/problems/sort-list/

# 148. Sort List
# Solved
# Medium
# Topics
# Companies
# Given the head of a linked list, return the list after sorting it in ascending order.

# Example 1:

# Input: head = [4,2,1,3]
# Output: [1,2,3,4]
# Example 2:

# Input: head = [-1,5,3,4,0]
# Output: [-1,0,3,4,5]
# Example 3:

# Input: head = []
# Output: []

# Constraints:

# The number of nodes in the list is in the range [0, 5 * 104].
# -105 <= Node.val <= 105

# Follow up: Can you sort the linked list in O(n logn) time and O(1) memory (i.e. constant space)?

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}

# Complexity: O(n log n)
def merge(array, sorted_left, sorted_right)
  array_pointer = 0
  left_pointer = 0
  right_pointer = 0

  while left_pointer < sorted_left.length && right_pointer < sorted_right.length
    if sorted_left[left_pointer] < sorted_right[right_pointer]
      array[array_pointer] = sorted_left[left_pointer]
      left_pointer += 1
    else
      array[array_pointer] = sorted_right[right_pointer]
      right_pointer += 1
    end

    array_pointer += 1
  end

  while left_pointer < sorted_left.length
    array[array_pointer] = sorted_left[left_pointer]
    left_pointer += 1
    array_pointer += 1
  end

  while right_pointer < sorted_right.length
    array[array_pointer] = sorted_right[right_pointer]
    right_pointer += 1
    array_pointer += 1
  end

  array
end

def merge_sort(array)
  return array if array.length <= 1

  middle = (array.length / 2).round

  sorted_left = merge_sort(array[0...middle])
  sorted_right = merge_sort(array[middle...array.length])

  merge(array, sorted_left, sorted_right)

  array
end

def sort_list(head)
  values = []
  current_head = head

  while current_head
    values.push(current_head.val)
    current_head = current_head.next
  end

  values = merge_sort(values)

  current_head = head
  current_index = 0

  while current_head
    current_head.val = values[current_index]

    current_head = current_head.next
    current_index += 1
  end

  head
end
