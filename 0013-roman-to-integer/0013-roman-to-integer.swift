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
        for i in 0..<s.count - 1 {
            let cur: Int = roman[s[i]]!
            let next: Int = roman[s[i + 1]]!
            if cur < next { ret -= cur }
            else { ret += cur }
        }
        
        return ret + roman[s.last!]!
    }
}