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
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil else { return nil }

        var prev: ListNode? = nil
        var cur: ListNode? = head

        while cur != nil {
            let next: ListNode? = cur!.next
            cur!.next = prev
            prev = cur
            cur = next
        }

        return prev
    }
}