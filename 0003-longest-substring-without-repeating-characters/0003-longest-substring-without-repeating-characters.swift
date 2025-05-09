// Set 을 이용한 풀이
// O(n) 이지만, 만약 duplicate value 가 far apart 하다면.
// set은 remove를 반복 수행하고 contains check도 하나씩 반복하게 됨.

// class Solution {
//     func lengthOfLongestSubstring(_ s: String) -> Int {
//         var l = 0, res = 0
//         var chars = Array(s)
//         var charSet = Set<Character>()
//         for r in (0..<chars.count) {
//             while charSet.contains(chars[r]) {
//                 charSet.remove(chars[l])
//                 l += 1
//             }
//             charSet.insert(chars[r])
//             res = max(res, r - l + 1)
//         }
//         return res
//     }
// }

// 그에 반해 Swift에서 dictionary는 중복된 값이 나온다면,
// 해당 중복된 old value 의 + 1 과 startIndex 의 max 값으로
// startIndex 와 index 의 차이를 통해 longest 를 구할 수 있음.
// 쉽게 말해, directly jump 가 됨.

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var startIndex = 0, longest = 0
        var charMap: [Character: Int] = [:]

        for (index, char) in s.enumerated() {
            if let foundIndex = charMap[char] {
                startIndex = max(foundIndex + 1, startIndex)
            }
            longest = max(longest, index - startIndex + 1)
            charMap[char] = index
        }
        return longest
    }
}