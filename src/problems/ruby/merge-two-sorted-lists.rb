# https://leetcode.com/problems/merge-two-sorted-lists
# 21. Merge Two Sorted Lists
# Easy
# You are given the heads of two sorted linked lists list1 and list2.

# Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

# Return the head of the merged linked list.

# Example 1:

# Input: list1 = [1,2,4], list2 = [1,3,4]
# Output: [1,1,2,3,4,4]
# Example 2:

# Input: list1 = [], list2 = []
# Output: []
# Example 3:

# Input: list1 = [], list2 = [0]
# Output: [0]

# Constraints:

# The number of nodes in both lists is in the range [0, 50].
# -100 <= Node.val <= 100
# Both list1 and list2 are sorted in non-decreasing order.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}

# Complexity: T: O(n + m), S: O(n+m)

def compare(first_node, second_node)
  return first_node, first_node.next, second_node if first_node.val < second_node.val

  [second_node, first_node, second_node.next]
end

def merge_two_lists(list1, list2)
  return list2 unless list1
  return list1 unless list2

  head, list_1_node, list_2_node = compare(list1, list2)
  resulted_node = head

  while list_1_node && list_2_node
    resulted_node.next, list_1_node, list_2_node = compare(list_1_node, list_2_node)
    resulted_node = resulted_node.next
  end

  resulted_node.next = list_1_node if list_1_node
  resulted_node.next = list_2_node if list_2_node

  head
end
