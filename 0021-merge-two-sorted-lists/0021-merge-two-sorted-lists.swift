/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var dummy = ListNode()
        var cur = dummy
        var p1 = list1, p2 = list2

        while p1 != nil && p2 != nil {
            if p1!.val <= p2!.val {
                cur.next = p1
                p1 = p1!.next
            } else {
                cur.next = p2
                p2 = p2!.next
            }
            cur = cur.next!
        }

        if p1 != nil {
            cur.next = p1
        } else {
            cur.next = p2
        }

        return dummy.next
    }
}