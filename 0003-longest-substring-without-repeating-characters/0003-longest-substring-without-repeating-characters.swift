class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var l = 0
        var s = Array(s)
        var set = Set<Character>()
        var res = 0
        for r in 0..<s.count {
            while set.contains(s[r]) {
                set.remove(s[l])
                l += 1
            }
            set.insert(s[r])
            res = max(res, r - l + 1)
        }
        return res
    }
}