class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        let stk1 = go(s)
        let stk2 = go(t)
        return stk1 == stk2
    }

    func go(_ s: String) -> Array<Character> {
        var stk: Array<Character> = []

        for ch in s {
            if ch == "#" && stk.count > 0 {
                stk.removeLast()
            } else if ch != "#" {
                stk.append(ch)
            }
        }
        print("stk: \(stk)")
        return stk
    }
}