# https://leetcode.com/problems/add-two-numbers
# 2. Add Two Numbers
# Medium
# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# Example 1:

# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807.
# Example 2:

# Input: l1 = [0], l2 = [0]
# Output: [0]
# Example 3:

# Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
# Output: [8,9,9,9,0,0,0,1]

# Constraints:

# The number of nodes in each linked list is in the range [1, 100].
# 0 <= Node.val <= 9
# It is guaranteed that the list represents a number that does not have leading zeros.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def sum_nodes(l1_val, l2_val, balance)
  [ListNode.new((l1_val + l2_val + balance) % 10), (l1_val + l2_val + balance) / 10]
end

def add_two_numbers(l1, l2)
  result_first_node, balance = *sum_nodes(l1.val, l2.val, 0)
  previous_node = result_first_node

  while l1.next && l2.next
    l1 = l1.next
    l2 = l2.next

    previous_node.next, balance = *sum_nodes(l1.val, l2.val, balance)
    previous_node = previous_node.next
  end

  while l1.next
    l1 = l1.next

    previous_node.next, balance = *sum_nodes(l1.val, 0, balance)
    previous_node = previous_node.next
  end

  while l2.next
    l2 = l2.next

    previous_node.next, balance = *sum_nodes(l2.val, 0, balance)
    previous_node = previous_node.next
  end

  previous_node.next = ListNode.new(balance) if balance > 0

  result_first_node
end
