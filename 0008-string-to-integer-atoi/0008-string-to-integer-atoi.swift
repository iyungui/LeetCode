class Solution {
    func myAtoi(_ s: String) -> Int {
        var s = Array(s)
        var idx = 0
        var isNegative = false
        var result = 0
        // ignore any leading whitespace
        while idx < s.count && s[idx] == " " {
            idx += 1
        }
        if idx == s.count {
            return 0
        }

        // checking sign
        if s[idx] == "+" { idx += 1 }
        else if s[idx] == "-" { idx += 1; isNegative = true }

        while idx < s.count && s[idx].isNumber {
            let digit = Int(String(s[idx]))!
            result = result * 10 + digit
            if result > Int32.max {
                return isNegative ? Int(Int32.min) : Int(Int32.max)
            }
            idx += 1
        }

        return isNegative ? -result : result
    }
}