class Solution {
    func isValid(_ s: String) -> Bool {
        // Early return for odd length strings
        guard s.count % 2 == 0 else { return false }

        var stk: [Character] = []

        for ch in s {
            switch ch {
                // It's an opening bracket
                case "(": stk.append(")")
                case "[": stk.append("]")
                case "{": stk.append("}")

                // It's an closing bracket
                default:
                    if stk.isEmpty || stk.removeLast() != ch { return false }
            }
        }

        return stk.isEmpty
    }
}