class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 { return s }

        var res: String = ""
        let increment = 2 * (numRows - 1)
        let s = Array(s)
        for r in 0..<numRows {
            for i in stride(from: r, to: s.count, by: increment) {
                res += String(s[i])
                if (r > 0 && r < numRows - 1 && i + increment - 2 * r < s.count) {
                    res += String(s[i + increment - 2 * r])
                }
            }
        }

        return res
    }
}