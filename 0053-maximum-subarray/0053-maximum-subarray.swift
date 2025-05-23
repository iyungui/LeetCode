class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var curSum = 0
        for n in nums {
            if curSum < 0 {
                curSum = 0
            }
            curSum += n
            maxSum = max(maxSum, curSum)
        }
        return maxSum
    }
}