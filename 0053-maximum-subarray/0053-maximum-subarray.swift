class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        // 현재를 더한 curSum vs 현재만 가져갈지
        var curSum = 0
        var maxSum = Int.min
        for i in 0..<nums.count {
            curSum = max(curSum + nums[i], nums[i])
            maxSum = max(maxSum, curSum)
        }

        return maxSum
    }
}