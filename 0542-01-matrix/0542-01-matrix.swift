class Solution {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        let m = mat[0].count
        let n = mat.count

        var distance = Array(repeating: Array(repeating: -1, count: m), count: n)
        var queue: [(Int, Int)] = []
        for i in 0..<n {
            for j in 0..<m {
                if mat[i][j] == 0 {
                    distance[i][j] = 0
                    queue.append((i, j))
                }
            }
        }

        let dy = [-1, 0, 1, 0]
        let dx = [0, 1, 0, -1]

        var index = 0
        while index < queue.count {
            let (y, x) = queue[index]
            index += 1
            for i in 0..<4 {
                let ny = y + dy[i]
                let nx = x + dx[i]

                if ny < 0 || ny >= n || nx < 0 || nx >= m { continue }
                if distance[ny][nx] != -1 { continue }

                distance[ny][nx] = distance[y][x] + 1
                queue.append((ny, nx))
            }
        }

        return distance
    }
}