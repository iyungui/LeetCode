class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        // Top-Down Memoization
        var s = Array(s), p = Array(p)
        var memo = [[Bool?]](repeating: [Bool?](repeating: nil, count: p.count + 1), count: s.count + 1)

        func dfs(_ i: Int, _ j: Int) -> Bool {
            // 이미 계산한 결과가 있으면 반환
            if let result = memo[i][j] {
                return result
            }

            // 케이스는 두 문자열을 모두 소진했을 때 매칭이 성공적으로 완료되었음을 의미
            if i >= s.count && j >= p.count { 
                memo[i][j] = true
                return true 
            }

            // 패턴을 모두 소진했지만 입력 문자열이 남아있는 경우
            // 예를들어 s가 "abc" 이고, p가 "a" 인데,
            // p를 가리키는 j가 p 를 벗어났다면
            // 더 이상 볼 필요없이, s는 p에 매칭되지 않음.
            if j >= p.count {
                memo[i][j] = false
                return false
            }

            // match: i는 s.count 의 범위 안에 있으며
            // s[i] == p[j] 또는 (any single character 가 ok 인) "." 가 온다면
            // 그것이 바로 해당 character 가 매칭이라는 것.
            var match: Bool = i < s.count && (s[i] == p[j] || p[j] == ".")

            var result = false
            // j + 1 는, p라는 패턴의 다음 문자.
            // 근데 그 j + 1 이 p 범위 안에 있다면. (즉, index out of range 방지)
            // 그리고. p[j + 1] == "*" 는 만약 그 다음 문자가, "*" 이라면,
            if (j + 1) < p.count && p[j + 1] == "*" {
                // dfs 호출 (이제 우리는 두 가지 선택지를 봐야 함.)
                // 여기서 두 가지 선택지란,
                // 지금 p의 다음 문자로 *이 왔는데, 
                // * 을 사용하지 않을지 (i, j + 2)
                // 아니면 *을 사용할지 (i + 1, j) --- 단 dfs(i + 1, j) 는
                // match 랑 묶여야 함. (*을 사용한 것이 match 여야 하므로??)
                result = (dfs(i, j + 2) || (match && dfs(i + 1, j)))
                // 그게 아니라면, 그냥 match 만 보면됨. 
                // 예를 들어, s[i] == "b", p[j] == "a" 라면, 당연히 not match
            } else if match {
                result = dfs(i + 1, j + 1)
            }

            memo[i][j] = result
            return result
        }
        // 당연히 i: 0, j: 0 부터 시작.
        return dfs(0, 0)
    }
}