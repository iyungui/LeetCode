class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var left = 0, right = 1
        var maxProfit = 0
        while right <= prices.count - 1 {
            let curProfit = prices[right] - prices[left]
            if curProfit > 0 {
                maxProfit = max(maxProfit, curProfit)
            } else {
                left = right
            }
            right += 1
        }
        return maxProfit
    }
}