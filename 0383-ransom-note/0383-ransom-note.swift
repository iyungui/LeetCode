class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict: [Character: Int] = [:]

        for ch in magazine {
            dict[ch, default: 0] += 1
        }

        for ch in ransomNote {
            if let count = dict[ch], count > 0 {
                dict[ch]! -= 1
            } else {
                return false
            }
        }

        return true
    }
}