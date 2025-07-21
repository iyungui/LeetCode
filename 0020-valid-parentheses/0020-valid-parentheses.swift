class Solution {
    func isValid(_ s: String) -> Bool {
        let arr = Array(s)
        var stk = Array<Character>()
        for ch in arr {
            if !stk.isEmpty {
                if (stk.last! == "(" && ch == ")") ||
                    (stk.last! == "[" && ch == "]") ||
                    (stk.last! == "{" && ch == "}") {
                        stk.removeLast()
                    } else {
                        stk.append(ch)
                    }
            } else {
                stk.append(ch)
            }
        }

        return stk.isEmpty
    }
}