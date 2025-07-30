class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        return go(s) == go(t)
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
        return stk
    }
}