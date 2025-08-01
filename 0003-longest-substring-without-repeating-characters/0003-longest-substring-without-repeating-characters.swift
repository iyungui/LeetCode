class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var l = 0, res = 0
        var charSet = Set<Character>()
        var s = Array(s)
        for r in 0..<s.count {
            while charSet.contains(s[r]) {
                charSet.remove(s[l])
                l += 1
            }
            charSet.insert(s[r])
            res = max(res, r - l + 1)
        }
        return res
    }
}