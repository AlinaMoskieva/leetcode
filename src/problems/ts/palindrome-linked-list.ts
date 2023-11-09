// https://leetcode.com/problems/palindrome-linked-list/submissions/
// 234. Palindrome Linked List
// Given the head of a singly linked list, return true if it is a
// palindrome
//  or false otherwise.

// Example 1:

// Input: head = [1,2,2,1]
// Output: true
// Example 2:

// Input: head = [1,2]
// Output: false

// Constraints:

// The number of nodes in the list is in the range [1, 105].
// 0 <= Node.val <= 9

// Follow up: Could you do it in O(n) time and O(1) space?

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

function isPalindrome(head: ListNode | null): boolean {
  let cursor: ListNode = head;
  let fastCursor: ListNode = head;

  while (fastCursor && fastCursor.next) {
    fastCursor = fastCursor.next.next;
    cursor = cursor.next;
  }

  let previousNode: ListNode = null;
  let nextNode: ListNode = null;

  while (cursor) {
    nextNode = cursor.next;
    cursor.next = previousNode;
    previousNode = cursor;
    cursor = nextNode;
  }

  let currentElemFromHead: ListNode = head;
  let currentElemFromMiddle: ListNode = previousNode;

  while (currentElemFromMiddle) {
    if (currentElemFromHead.val !== currentElemFromMiddle.val) return false;
    currentElemFromHead = currentElemFromHead.next;
    currentElemFromMiddle = currentElemFromMiddle.next;
  }

  return true;
}

isPalindrome([1, 2, 2, 1]); // true
