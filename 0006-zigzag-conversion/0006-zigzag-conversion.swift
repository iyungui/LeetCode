class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 { return s }
        
        var res: String = ""
        let s = Array(s)
        let jump: Int = (numRows - 1) * 2
        for row in 0..<numRows {
            for i in stride(from: row, to: s.count, by: jump) {
                res += String(s[i])
                if row > 0 && row < numRows - 1 && (i + jump - row * 2 < s.count) {
                    res += String(s[i + jump - row * 2])
                } 
            }
        }

        return res
    }
}