/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root, let p = p, let q = q else { return nil }

        var cur = root

        while true {
            // p와 q가 모두 현재 노드보다 작으면 왼쪽으로
            if p.val < cur.val && q.val < cur.val {
                cur = cur.left!
            }
            // p와 q가 모두 현재 노드보다 크다면 오른쪽으로
            else if p.val > cur.val && q.val > cur.val {
                cur = cur.right!
            }
            // 그렇지 않으면 현재 노드가 LCA
            else { return cur }
        }
    }
}