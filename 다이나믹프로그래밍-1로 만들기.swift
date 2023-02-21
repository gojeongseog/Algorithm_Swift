//
//  다이나믹프로그래밍-1로 만들기.swift
//  
//
//  Created by KoJeongseok on 2023/02/21.

// 다이나믹프로그래밍을 이용하여 문제 해결

import Foundation

let x = Int(readLine()!)!
var dp = Array(repeating: 0, count: x + 1)

for i in 2...x {
  dp[i] = dp[i - 1] + 1
  if i % 2 == 0 { // 2로 나뉘는 경우
    dp[i] = min(dp[i], dp[i / 2] + 1)
  }
  if i % 3 == 0 { // 3으로 나뉘는 경우
    dp[i] = min(dp[i], dp[i / 3] + 1)
  }
  if i % 5 == 0 { // 5로 나뉘는 경우
    dp[i] = min(dp[i], dp[i / 5] + 1)
  }
}

print(dp[x])


