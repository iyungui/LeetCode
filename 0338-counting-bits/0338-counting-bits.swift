class Solution {
    func countBits(_ n: Int) -> [Int] {
        var ret: [Int] = []
        for i in 0...n {
            ret.append(countBit(i))
        }

        return ret
    }

    private func countBit(_ n: Int) -> Int {
        var cnt = 0
        var n = n
        while n > 0 {
            cnt += (n & 1)
            n >> 1
        }

        return cnt
    }
}