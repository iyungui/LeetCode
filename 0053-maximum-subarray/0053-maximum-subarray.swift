class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var curSum = nums[0]
        var maxSum = nums[0]

        for i in 1..<nums.count {
            // decide whether 'extend the current subarray' or 'start a new subarray'
            curSum = max(curSum + nums[i], nums[i])
            maxSum = max(curSum, maxSum)
        }

        return maxSum
    }
}