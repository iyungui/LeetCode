class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let sortedNums = nums.sorted()
        var left = 0
        var right = nums.count - 1

        while left < right {
            let sum = sortedNums[left] + sortedNums[right]
            if sum == target {
                if let index1 = nums.firstIndex(of: sortedNums[left]), 
                   let index2 = nums.lastIndex(of: sortedNums[right]) {
                    return [index1, index2]
                }
            } else if sum < target {
                left += 1
            } else {
                right -= 1
            }
        }

        return []
    }
}