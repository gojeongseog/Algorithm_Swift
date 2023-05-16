//
//  백준-1654-랜선 자르기.swift
//  
//
//  Created by KoJeongseok on 2023/02/20.
//  https://www.acmicpc.net/problem/1654

// 일반적인 이진탐색을 이용하여 풀었음
// 주의점으로는 개수가 n개를 초과해도 답으로 가정하기 때문에 최대값을 찾아야 함

import Foundation

let kn = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let k = kn.first!
let n = kn.last!
var lines = [Int]()

for _ in 0..<k {
  let line = Int(readLine()!)!
  lines.append(line)
}
let longLine = lines.max()!

print(binary(length: longLine))

func binary(length: Int) -> Int {
  var start = 1
  var end = length
  var result = 0
  while start <= end {
    let mid = (start + end) / 2
    let temp = lines.map { $0 / mid }.reduce(0, +)

    if temp >= n {
      if result < mid {
        result = mid
      }
      start = mid + 1
    } else {
      end = mid - 1
    }
  }
  return result
}

