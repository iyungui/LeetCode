class Solution {
    func reverse(_ x: Int) -> Int {
        let isNegative = x < 0
        var digits = Array(String(abs(x)))
        digits.reverse()
        let reversedDigits = String(digits)

        if let num = Int(reversedDigits) {
            let result = isNegative ? -num : num

            if result > Int32.max || result < Int32.min {
                return 0
            }
            return result
        } else {
            return 0
        }
    }
}