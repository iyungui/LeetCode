class Solution {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        
        var result: [[Int]] = []
        var maxHeap: [(distance: Int, point: [Int])] = []
        
        for point in points {
            let distance = point[0] * point[0] + point[1] * point[1]
            
            if maxHeap.count < k {
                // 힙이 k개 미만이면 추가
                maxHeap.append((distance: distance, point: point))
                maxHeap.sort { $0.distance > $1.distance } // Max heap 유지
            } else if distance < maxHeap[0].distance {
                // 현재 점이 힙의 최대값보다 가까우면 교체
                maxHeap[0] = (distance: distance, point: point)
                maxHeap.sort { $0.distance > $1.distance } // Max heap 유지
            }
        }
        
        return maxHeap.map { $0.point }
    }
}