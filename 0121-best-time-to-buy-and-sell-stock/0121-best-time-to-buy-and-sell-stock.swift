class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var left = 0, right = 1
        let n = prices.count
        var maxProfit = 0
        while right < n {
            if prices[left] <= prices[right] {
                let diff = prices[right] - prices[left]
                
                // update profit
                if maxProfit < diff {
                    maxProfit = diff
                }

            } else {
                // update pointer because it doesn't need to buy at higher day
                left = right
            }

            right += 1
        }

        return maxProfit
    }
}