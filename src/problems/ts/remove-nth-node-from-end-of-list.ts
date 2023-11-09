// https://leetcode.com/problems/remove-nth-node-from-end-of-list/

// 19. Remove Nth Node From End of List
// Medium
// Given the head of a linked list, remove the nth node from the end of the list and return its head.

// Example 1:
// Input: head = [1,2,3,4,5], n = 2
// Output: [1,2,3,5]
// Example 2:

// Input: head = [1], n = 1
// Output: []
// Example 3:

// Input: head = [1,2], n = 1
// Output: [1]

// Constraints:

// The number of nodes in the list is sz.
// 1 <= sz <= 30
// 0 <= Node.val <= 100
// 1 <= n <= sz

// Follow up: Could you do this in one pass?

/**
 * Definition for singly-linked list.
 * class ListNode {
 *     val: number
 *     next: ListNode | null
 *     constructor(val?: number, next?: ListNode | null) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.next = (next===undefined ? null : next)
 *     }
 * }
 */

function removeNthFromEnd(head: ListNode | null, n: number): ListNode | null {
  let coursor: ListNode = head;
  let fastPointer: ListNode = head;

  for (let i = 0; i < n; i++) {
    fastPointer = fastPointer.next ? fastPointer.next : null;
  }

  if (fastPointer === null) return coursor.next;

  while (fastPointer.next !== null) {
    coursor = coursor.next;
    fastPointer = fastPointer.next;
  }

  coursor.next = coursor.next?.next ? coursor.next.next : null;

  return head;
}
