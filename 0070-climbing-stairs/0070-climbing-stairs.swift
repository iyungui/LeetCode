class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 1 { return 1 }

        var first = 1, second = 1
        var third: Int
        for _ in 2...n {
            third = first + second
            first = second
            second = third
        }

        return second
    }
}