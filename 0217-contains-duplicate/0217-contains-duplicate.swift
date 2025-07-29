class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var seen = Set<Int>()

        for num in nums {   // O(n) but can return early when it's the best case.
            if seen.contains(num) { return true }   // O(1)
            seen.insert(num)    // O(1)
        }

        return false
    }
}