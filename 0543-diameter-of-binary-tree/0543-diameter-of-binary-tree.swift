/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var ret = 0

        func go(_ node: TreeNode?) -> Int {
            guard let node = node else { return 0 }
            let leftDepth = go(node.left)
            let rightDepth = go(node.right)

            ret = max(ret, leftDepth + rightDepth)

            return 1 + max(leftDepth, rightDepth)
        }

        go(root)

        return ret
    }
}