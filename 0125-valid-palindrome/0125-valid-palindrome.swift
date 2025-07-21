class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let trimmedStr = s.lowercased().filter { $0.isNumber || $0 >= "a" && $0 <= "z" }
        return Array(trimmedStr) == Array(trimmedStr).reversed()
    }
}