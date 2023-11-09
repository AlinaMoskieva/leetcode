// https://leetcode.com/problems/merge-two-sorted-lists/submissions/

// 21. Merge Two Sorted Lists
// You are given the heads of two sorted linked lists list1 and list2.

// Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

// Return the head of the merged linked list.

// Example 1:

// Input: list1 = [1,2,4], list2 = [1,3,4]
// Output: [1,1,2,3,4,4]
// Example 2:

// Input: list1 = [], list2 = []
// Output: []
// Example 3:

// Input: list1 = [], list2 = [0]
// Output: [0]

// Constraints:

// The number of nodes in both lists is in the range [0, 50].
// -100 <= Node.val <= 100
// Both list1 and list2 are sorted in non-decreasing order.

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

function compare(listOneCurrentElement, listTwoCurrentElement) {
  let smallerNode: ListNode;
  if (listOneCurrentElement.val < listTwoCurrentElement.val) {
    smallerNode = listOneCurrentElement;
    listOneCurrentElement = listOneCurrentElement.next;
  } else {
    smallerNode = listTwoCurrentElement;
    listTwoCurrentElement = listTwoCurrentElement.next;
  }

  return [smallerNode, listOneCurrentElement, listTwoCurrentElement];
}

function fillWithTail(currentNode, tailCurrentElement): void {
  while (tailCurrentElement) {
    currentNode.next = tailCurrentElement;
    tailCurrentElement = tailCurrentElement.next;
    currentNode = currentNode.next;
  }
}

function mergeTwoLists(
  list1: ListNode | null,
  list2: ListNode | null
): ListNode | null {
  const head: ListNode;
  let listOneCurrentElement = list1;
  let listTwoCurrentElement = list2;

  if (!listOneCurrentElement) return list2;
  if (!listTwoCurrentElement) return list1;

  [head, listOneCurrentElement, listTwoCurrentElement] = compare(
    listOneCurrentElement,
    listTwoCurrentElement
  );

  let currentNode: ListNode = head;

  while (listOneCurrentElement && listTwoCurrentElement) {
    [currentNode.next, listOneCurrentElement, listTwoCurrentElement] = compare(
      listOneCurrentElement,
      listTwoCurrentElement
    );
    currentNode = currentNode.next;
  }

  if (listOneCurrentElement) fillWithTail(currentNode, listOneCurrentElement);
  if (listTwoCurrentElement) fillWithTail(currentNode, listTwoCurrentElement);

  return head;
}

mergeTwoLists([1, 2, 4], [1, 3, 4]);
