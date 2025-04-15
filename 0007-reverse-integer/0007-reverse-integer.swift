class Solution {
    func reverse(_ x: Int) -> Int {
        var r = 0, x = x
        while x != 0 {
            r = r * 10
            r = r + (x % 10)
            x /= 10
        }
        return r < Int32.min || r > Int32.max ? 0 : r
    }
}