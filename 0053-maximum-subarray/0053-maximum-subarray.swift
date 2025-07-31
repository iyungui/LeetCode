class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var curSum = nums[0], maxSum = nums[0]

        for i in 1..<nums.count {
            curSum = max(nums[i], curSum + nums[i])
            maxSum = max(curSum, maxSum)
        }
        return maxSum
    }
}