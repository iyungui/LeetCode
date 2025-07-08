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
    func isBalanced(_ root: TreeNode?) -> Bool {
        return dfs(root).0
    }

    // bool, height
    private func dfs(_ root: TreeNode?) -> (Bool, Int) {
        guard let root = root else { return (true, 0) }

        let left = dfs(root.left)
        let right = dfs(root.right)
        let balanced = (left.0 && right.0 && abs(left.1 - right.1) <= 1)

        return (balanced, 1 + max(left.1, right.1))
    }
}