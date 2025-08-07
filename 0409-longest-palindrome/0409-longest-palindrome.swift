class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var dict: [Character: Int] = [:]

        for ch in s {
            dict[ch, default: 0] += 1
        }
        var length = 0
        var flag = false
        for count in dict.values {
            if count % 2 == 0 {
                length += count
            } else {
                length += (count - 1)
                flag = true
            }
        }

        return flag ? length + 1 : length
    }
}