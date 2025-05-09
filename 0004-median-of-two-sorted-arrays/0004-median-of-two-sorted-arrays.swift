class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let sortedArr = (nums1 + nums2).sorted()
        let mid = sortedArr.count / 2
        if sortedArr.count % 2 == 0 {
            print((sortedArr[mid - 1], sortedArr[mid]))
            return Double((sortedArr[mid - 1] + sortedArr[mid])) / 2
        }
        return Double(sortedArr[mid])
    }
}