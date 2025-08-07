class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let a = Array(a), b = Array(b)
        var i = a.count - 1
        var j = b.count - 1
        var ret = ""
        var carry = 0
        
        while i >= 0 || j >= 0 || carry > 0 {
            var sum = carry
            if i >= 0 {
                sum += Int(String(a[i]))!
                i -= 1
            }
            if j >= 0 {
                sum += Int(String(b[j]))!
                j -= 1
            }
            ret = String(sum % 2) + ret
            carry = sum / 2
        }

        return ret
    }
}