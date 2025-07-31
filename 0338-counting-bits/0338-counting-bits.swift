class Solution {
    func countBits(_ n: Int) -> [Int] {
        if n == 0 { return [0] }
        var ans = [Int](repeating: 0, count: n + 1)
        for i in 1...n {
            ans[i] = ans[i >> 1] + (i & 1)
        }
        return ans 
    }
}