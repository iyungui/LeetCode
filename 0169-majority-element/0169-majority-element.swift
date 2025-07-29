class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate = 0
        var cnt = 0
        
        for num in nums {
            if cnt == 0 {
                candidate = num
                cnt = 1
            } else if num == candidate {
                cnt += 1
            } else {
                cnt -= 1
            }
        }

        return candidate
    }
}