class Solution {
    let dy = [-1, 0, 1, 0], dx = [0, 1, 0, -1]
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        var image = image
        let n = image.count, m = image[0].count
        var visited = Array(repeating: Array(repeating: 0, count: m), count: n)
        var original: Int = image[sr][sc]

        func dfs(_ y: Int, _ x: Int) {
            image[y][x] = color
            visited[y][x] = 1
            for i in 0..<4 {
                let ny = y + dy[i], nx = x + dx[i]

                if ny < 0 || ny >= n || nx < 0 || nx >= m || visited[ny][nx] != 0 { continue }
                if image[ny][nx] == original {
                    dfs(ny, nx)
                }
            }
        }

        dfs(sr, sc)

        return image
    }
}

//, _ image: inout [[Int]], _ image: inout [[Int]], _ color: Int