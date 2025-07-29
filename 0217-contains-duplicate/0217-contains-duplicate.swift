class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict: [Int: Int] = [:]
        for num in nums {
            if dict[num] != nil { return true }
            dict[num, default: 0] = 1
        }
        return false
    }
}