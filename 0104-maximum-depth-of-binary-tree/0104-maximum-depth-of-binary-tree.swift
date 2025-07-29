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
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        var maxDepth = 0

        var stack: [(node: TreeNode, depth: Int)] = [(root, 1)]

        while !stack.isEmpty {
            let last = stack.removeLast()
            let depth = last.depth
            maxDepth = max(maxDepth, depth)
            if let left = last.node.left {
                stack.append((left, depth + 1))
            }
            if let right = last.node.right {
                stack.append((right, depth + 1))
            }
        }

        return maxDepth
    }
}