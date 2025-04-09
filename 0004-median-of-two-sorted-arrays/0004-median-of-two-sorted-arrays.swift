class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let arr = (nums1 + nums2).sorted()
        let mid = arr.count / 2
        if arr.count % 2 == 0 {
            let ans: Double = Double(arr[mid - 1]) + Double(arr[mid])
            return ans / 2
        } else {
            return Double(arr[mid])
        }
        return 0
    }
}