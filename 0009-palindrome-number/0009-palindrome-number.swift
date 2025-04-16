class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        var reverse = 0
        var temp = x, x = x
        while x > 0 {
            reverse = (reverse * 10) + (x % 10)
            x /= 10
        }
        return reverse == temp
    }
}