class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        nums.sort()
        var l = 0
        var r = nums.count - 1
        while l < r {
            let sum = nums[l] + nums[r]
            if sum == target { return [l, r] }
            else if sum <= target { l += 1 }
            else { r -= 1 }
        }
        return []
    }
}