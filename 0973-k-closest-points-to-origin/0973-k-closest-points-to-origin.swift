class Solution {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        return points.sorted { point1, point2 in
            let dist1 = point1[0] * point1[0] + point1[1] * point1[1]
            let dist2 = point2[0] * point2[0] + point2[1] * point2[1]
            return dist1 < dist2
        }.prefix(k).map { $0 }
    }
}