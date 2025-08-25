class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let sortedNums = nums.enumerated().sorted { $0.element < $1.element }
        var l = 0, r = nums.count - 1
        while l < r {
            let sum = sortedNums[l].element + sortedNums[r].element
            if sum == target { return [sortedNums[l].offset, sortedNums[r].offset] }
            else if sum < target { l += 1 }
            else { r -= 1 }
        }
        return []
    }
}