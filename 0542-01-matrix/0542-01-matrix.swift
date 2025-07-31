class Solution {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        let dy = [-1, 0, 1, 0]
        let dx = [0, 1, 0, -1]
        let n = mat.count, m = mat[0].count
        var dist: [[Int]] = Array(repeating: Array(repeating: -1, count: m), count: n)

        var queue: [(y: Int, x: Int)] = []
        var front = 0

        for i in 0..<n {
            for j in 0..<m {
                if mat[i][j] == 0 {
                    dist[i][j] = 0
                    queue.append((i, j))
                }
            }
        }

        while front < queue.count {
            let (y, x) = queue[front]
            
            for i in 0..<4 {
                let ny = y + dy[i]
                let nx = x + dx[i]

                if ny < 0 || ny >= n || nx < 0 || nx >= m { continue }
                if dist[ny][nx] != -1 { continue }
                dist[ny][nx] = dist[y][x] + 1
                queue.append((ny, nx))
            }

            front += 1
        }

        return dist
    }
}