class Solution {
    func romanToInt(_ s: String) -> Int {
        let roman: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        var ret = 0
        var s = Array(s)
        for i in 0..<s.count {
            if i + 1 < s.count && roman[s[i]]! < roman[s[i + 1]]! {
                ret -= roman[s[i]]!
            } else {
                ret += roman[s[i]]!
            }
        }

        return ret
    }
}