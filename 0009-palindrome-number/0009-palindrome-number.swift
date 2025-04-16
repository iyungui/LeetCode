class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        Array(String(x)).reversed() == Array(String(x)) ? true : false
    }
}