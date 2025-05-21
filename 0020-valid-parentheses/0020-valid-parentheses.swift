class Solution {
    func isValid(_ s: String) -> Bool {
        var stk: [Character] = []
        for ch in s {
            if ch == "(" || ch == "{" || ch == "[" {
                stk.append(ch)
            } else if !stk.isEmpty {
                if ch == ")" && stk.last! == "(" {
                    stk.removeLast()
                } else if ch == "}" && stk.last! == "{" {
                    stk.removeLast()
                } else if ch == "]" && stk.last! == "[" {
                    stk.removeLast()
                } else { return false }
            } else { return false }
        }
        return stk.isEmpty ? true : false
    }
}