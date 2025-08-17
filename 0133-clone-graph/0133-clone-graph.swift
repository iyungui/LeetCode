/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var neighbors: [Node?]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.neighbors = []
 *     }
 * }
 */

class Solution {
    func cloneGraph(_ node: Node?) -> Node? {
        var visited = [Int: Node]()
        return go(node, &visited)
    }

    private func go(_ node: Node?, _ visited: inout [Int: Node]) -> Node? {
        guard let node = node else { return nil }

        let new = Node(node.val)
        visited[node.val] = new

        for neighbor in node.neighbors {
            guard let neighbor = neighbor else { continue }

            if let n = visited[neighbor.val] {
                new.neighbors.append(n)
            } else {
                let n = go(neighbor, &visited)
                new.neighbors.append(n)
            }
        }

        return new
    }
}

// visited: Dictionary<Int, Node>