class Solution {
    func longestPalindrome(_ s: String) -> String {
        var arr = Array(s)
        var left: Int, right: Int
        var res: String = ""

        for i in 0..<arr.count {
            left = i; right = i
            while left >= 0 && right < arr.count && arr[left] == arr[right] {
                if right - left + 1 > res.count {
                    res = String(arr[left...right])
                }
                left -= 1
                right += 1 
            }

            left = i; right = i + 1
            while left >= 0 && right < arr.count && arr[left] == arr[right] {
                if right - left + 1 > res.count {
                    res = String(arr[left...right])
                }
                left -= 1
                right += 1
            }
        }

        return res
    }
}