class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        let pairs: [Character: Character] = [")": "(", "]" : "[", "}": "{"]

        for char in s {
            // char: ), ], } (It's an closing bracket)
            if let openBracket = pairs[char] {
                if stack.isEmpty || stack.removeLast() != openBracket { return false }
            } else {
                // It's an opening bracket
                stack.append(char)
            }
        }

        return stack.isEmpty
    }
}