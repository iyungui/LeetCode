class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let sortedNums = nums.sorted()
        var l = 0
        var r = sortedNums.count - 1
        while l < r {
            let sum = sortedNums[l] + sortedNums[r]
            if sum == target {
                if let idx1 = nums.firstIndex(of: sortedNums[l]),
                let idx2 = nums.lastIndex(of: sortedNums[r]) {
                    return [idx1, idx2]
                }
            }
            else if sum <= target { l += 1 }
            else { r -= 1 }
        }
        return []
    }
}