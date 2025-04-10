class Solution {
    func longestPalindrome(_ s: String) -> String {
        let characters = Array(s)  // 빠른 인덱싱을 위해 문자 배열로 변환
        var res = ""
        var resLen = 0
        var l: Int
        var r: Int
        for i in 0..<characters.count {
            // odd Length
            l = i; r = i
            while l >= 0 && r < characters.count && characters[l] == characters[r] {
                if (r - l + 1) > resLen {
                    res = String(characters[l...r])
                    resLen = r - l + 1
                }
                l -= 1
                r += 1
            }

            // even Length
            l = i; r = i + 1
            while l >= 0 && r < characters.count && characters[l] == characters[r] {
                if (r - l + 1) > resLen {
                    res = String(characters[l...r])
                    resLen = r - l + 1
                }
                l -= 1
                r += 1
            }
        }
        return res
    }
}