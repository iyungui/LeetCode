class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (idx, num) in nums.enumerated() {
            if let addent = dict[num] { return [addent, idx] }
            else { dict[target - num] = idx }
        }
        return []
    }
}