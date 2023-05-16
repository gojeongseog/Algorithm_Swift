//
//  다이나믹프로그래밍-개미 전사.swift
//  
//
//  Created by KoJeongseok on 2023/02/21.

// 이것이 코딩테스트다 P220
// 다이나믹프로그래밍을 이용하여 문제 해결
// 차근차근 점화식을 세워 높은 식량을 얻기 위한 선택을 하면 된다.

import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var dp = Array(repeating: 0, count: n)
dp[0] = arr[0]
dp[1] = max(arr[0], arr[1])
for i in 2..<n {
  dp[i] = max(dp[i - 1], dp[i - 2] + arr[i])
}

print(dp[n - 1])
