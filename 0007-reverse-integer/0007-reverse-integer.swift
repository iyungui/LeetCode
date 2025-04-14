class Solution {
    func reverse(_ x: Int) -> Int {
        // Check if the number is negative
        let isNegative = x < 0
        
        // Get absolute value and convert to string
        var digits = Array(String(abs(x)))
        
        // Reverse the digits
        digits.reverse()
        
        // Convert back to a string
        let reversedStr = String(digits)
        
        // Try to convert to Int (could be nil if too large)
        if let reversedInt = Int(reversedStr) {
            // Apply sign and check for overflow
            let result = isNegative ? -reversedInt : reversedInt
            
            // Check if result is within 32-bit signed integer range
            if result > Int32.max || result < Int32.min {
                return 0
            }
            
            return result
        } else {
            // If conversion fails, it means the number is too large
            return 0
        }
    }
}