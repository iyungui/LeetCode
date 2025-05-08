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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var temp = dummy
        var carry = 0
        var l1Cur = l1
        var l2Cur = l2

        while l1Cur != nil || l2Cur != nil || carry != 0 {
            let val1 = l1Cur?.val ?? 0
            let val2 = l2Cur?.val ?? 0

            let sum = val1 + val2 + carry
            carry = sum / 10
            temp.next = ListNode(sum % 10)
            temp = temp.next!
            l1Cur = l1Cur?.next
            l2Cur = l2Cur?.next
        }
        return dummy.next
    }
}