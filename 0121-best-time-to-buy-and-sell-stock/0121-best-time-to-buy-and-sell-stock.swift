class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var l = 0, r = 1    // l: buy, r: sell
        var maxP = 0
        while r < prices.count {
            // profitable?
            if prices[l] < prices[r] {
                let profit = prices[r] - prices[l]
                maxP = max(maxP, profit)
            } else {
                l = r
            }
            r += 1
        }
        return maxP
    }
}