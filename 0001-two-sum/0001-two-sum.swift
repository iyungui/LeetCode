class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for (idx, val) in nums.enumerated() {
            if let addent = dict[val] {
                return [addent, idx]
            }
            dict[target - val] = idx
        }

        return []
    }
}