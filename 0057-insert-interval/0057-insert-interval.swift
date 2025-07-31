class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        guard !intervals.isEmpty else { return [newInterval] }
        guard !newInterval.isEmpty else { return intervals }
        var new = newInterval
        var res: [[Int]] = []
        for i in 0..<intervals.count {
            // Case1: newInterval comes before current intervals
            if intervals[i][0] > new[1] {
                res.append(new)
                return res + Array(intervals[i...])
            }
            // Case2: newInterval comes after current intervals
            else if intervals[i][1] < new[0] {
                res.append(intervals[i])
            }
            // Case3: opverlaps (merge them)
            else {
                new = [min(intervals[i][0], new[0]),
                       max(intervals[i][1], new[1])]
            }
        }
        res.append(new)
        return res
    }
}