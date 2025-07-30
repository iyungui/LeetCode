class Solution {
    func countBits(_ n: Int) -> [Int] {
        var ret: [Int] = []
        for i in 0...n {
            let s = String(i, radix: 2)
            ret.append(s.filter { $0 == "1" }.count)
        }

        return ret
    }
}