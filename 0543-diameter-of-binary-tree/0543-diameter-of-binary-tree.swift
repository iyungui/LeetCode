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
        var maxDiameter = 0

        func depth(_ node: TreeNode?) -> Int {
            guard let node = node else { return 0 }
            
            let leftDepth = depth(node.left)
            let rightDepth = depth(node.right)

            // The diameter passing through this node is leftDepth + rightDepth
            maxDiameter = max(maxDiameter, leftDepth + rightDepth)

            // Return the depth of this subtree
            return max(leftDepth, rightDepth) + 1
        }

        depth(root)
        return maxDiameter
    }
}