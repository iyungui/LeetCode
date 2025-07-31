class Solution {
    func countBits(_ n: Int) -> [Int] {
        var result = [Int]()
        
        for i in 0...n {
            result.append(countOnes(i))
        }
        
        return result
    }
    
    private func countOnes(_ num: Int) -> Int {
        var count = 0
        var n = num
        
        while n > 0 {
            count += n & 1
            n >>= 1
        }
        
        return count
    }
}