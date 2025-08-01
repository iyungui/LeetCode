class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var startIndex = 0, res = 0
        var map: [Character: Int] = [:]
        for (index, char) in s.enumerated() {
            if let foundIndex = map[char] {
                startIndex = max(foundIndex + 1, startIndex)
            }
            res = max(res, index - startIndex + 1)
            map[char] = index
        }
        return res
    }
}