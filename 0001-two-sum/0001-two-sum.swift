class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for (idx, val) in nums.enumerated() {
            let complement = target - val   // 9 - 2 = 7

            if let complementIdx = dict[complement] {   // complementIdx = 0
                return [complementIdx, idx]
            }

            // store 2: 0
            dict[val] = idx
        }

        return []
    }
}