//
//  백준-1018-체스판 다시 칠하기.swift
//  
//
//  Created by KoJeongseok on 2023/02/19.
// https://www.acmicpc.net/problem/1018

// 필요한 범위의 모든 값을 확인하여 문제를 풀었음
// 범위나 조건문에 실수가 있어서 난이도에 비해 많은 시간이 걸림 (연습을 많이 해야할 듯)

import Foundation

let nm = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let (n, m) = (nm[0], nm[1])
var map = [[String]]()
for _ in 0..<n {
    let input = Array(readLine()!).map { String($0) }
    map.append(input)
}

var result = [Int]()

for i in 0...n - 8 {
    for j in 0...m - 8 {
      result.append(count(i, j))
    }
}

print(result.min()!)

func count(_ n: Int, _ m: Int) -> Int {
  var count = 0
  for i in 0..<8 {
    for j in 0..<8 {
      if i + j == 0 {
        if map[i + n][j + m] == "B" { count += 1 }
      } else if (i + j) % 2 == 0, map[i + n][j + m] == "B" {
        count += 1
      } else if (i + j) % 2 != 0, map[i + n][j + m] == "W" {
        count += 1
      }
    }
  }
  return 64 - count < count ? 64 - count : count
}
