class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        var ret: [[Int]] = []
        for i in 0..<nums.count {
            if i > 0 && nums[i] == nums[i - 1] { continue }
            let target = -nums[i]
            var left = i + 1, right = nums.count - 1
            while left < right {
                let curSum = nums[left] + nums[right]
                if curSum == target {
                    ret.append([nums[i], nums[left], nums[right]])
                    while left < right && nums[left] == nums[left + 1] { left += 1 }
                    while left < right && nums[right] == nums[right - 1] { right -= 1 }
                    left += 1
                    right -= 1
                } else if curSum < target {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        return ret
    }
}