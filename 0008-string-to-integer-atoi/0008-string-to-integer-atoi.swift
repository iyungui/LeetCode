class Solution {
    func myAtoi(_ s: String) -> Int {
        let s = Array(s)
        var index = 0
        let n = s.count
        
        // 1. 앞쪽 공백 무시 (Ignore leading whitespace)
        while index < n && s[index] == " " {
            index += 1
        }
        
        // 입력 문자열이 비어있거나 공백만 있는 경우 (Empty string or whitespace only)
        if index == n {
            return 0
        }
        
        // 2. 부호 확인 (Check sign)
        var isNegative = false
        if s[index] == "+" {
            index += 1
        } else if s[index] == "-" {
            isNegative = true
            index += 1
        }
        
        // 3. 숫자 읽기 (Read digits)
        var result = 0
        let INT_MAX = Int32.max  // 2^31 - 1
        let INT_MIN = Int32.min  // -2^31
        
        while index < n && s[index].isNumber {
            let digit = Int(String(s[index]))!
            
            // 4. 오버플로우 검사 (Overflow check)
            // 양수인 경우 INT_MAX 체크 (Check for INT_MAX if positive)
            if !isNegative && (result > INT_MAX / 10 || 
                              (result == INT_MAX / 10 && digit > INT_MAX % 10)) {
                return Int(INT_MAX)
            }
            // 음수인 경우 INT_MIN 체크 (Check for INT_MIN if negative)
            if isNegative && (result > abs(INT_MIN / 10) || 
                             (result == abs(INT_MIN / 10) && digit > abs(INT_MIN % 10))) {
                return Int(INT_MIN)
            }
            
            result = result * 10 + digit
            index += 1
        }
        
        return isNegative ? -result : result
    }
}