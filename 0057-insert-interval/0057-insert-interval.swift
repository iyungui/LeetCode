class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        guard !intervals.isEmpty else { return [newInterval] }
        guard !newInterval.isEmpty else { return intervals }

        var res: [[Int]] = []
        var newInterval = newInterval

        for i in 0..<intervals.count {
            // Case 1: newInterval comes before current interval (no overlap)
            if newInterval[1] < intervals[i][0] {
                res.append(newInterval)
                return res + Array(intervals[i...])
            }
            // Case 2: newInterval comes after current interval (no overlap)
            else if newInterval[0] > intervals[i][1] {
                res.append(intervals[i])
            }
            // Case 3: overlapping intervals - merge them
            else {
                newInterval = [min(newInterval[0], intervals[i][0]), 
                              max(newInterval[1], intervals[i][1])]
            }
        }
        res.append(newInterval)
        return res
    }
}