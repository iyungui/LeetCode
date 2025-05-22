class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let newStr = s.lowercased().filter { $0.isLetter || $0.isNumber }
        return String(newStr.reversed()) == newStr
    }
}