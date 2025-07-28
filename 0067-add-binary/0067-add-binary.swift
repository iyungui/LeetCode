class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let a = Array(a)
        let b = Array(b)
        var ret = ""
        var carry = 0
        var i = a.count - 1, j = b.count - 1

        // Process digits from right to left
        while i >= 0 || j >= 0 || carry > 0 {
            var sum = carry

            // Add digit from string (a or b) if available
            if i >= 0 {
                sum += Int(String(a[i]))!
                i -= 1
            }
            if j >= 0 {
                sum += Int(String(b[j]))!
                j -= 1
            }

            // Append the result digit (sum % 2) to the front
            ret = String(sum % 2) + ret

            // Update carry for next iteration
            carry = sum / 2
        }

        return ret
    }
}