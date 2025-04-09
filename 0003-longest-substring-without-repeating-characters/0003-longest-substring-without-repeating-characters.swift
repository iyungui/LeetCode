class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var l = 0, res = 0
        var chars = Array(s)
        var charSet = Set<Character>()
        for r in (0..<chars.count) {
            while charSet.contains(chars[r]) {
                charSet.remove(chars[l])
                l += 1
            }
            charSet.insert(chars[r])
            res = max(res, r - l + 1)
        }
        return res
    }
}