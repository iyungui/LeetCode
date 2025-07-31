class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = Int.min
        var curSum = 0

        for num in nums {
            curSum += num

            maxSum = max(maxSum, curSum)

            if curSum < 0 { curSum = 0 }
        }
        return maxSum
    }
}