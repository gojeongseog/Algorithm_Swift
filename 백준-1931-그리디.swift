//
//  백준-1931-그리디.swift
//  
//
//  Created by KoJeongseok on 2023/04/26.
//  https://www.acmicpc.net/problem/1931

import Foundation
let k = Int(readLine()!)!
var arr: [(Int, Int)] = []

for _ in 0..<k {
  let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
  arr.append((input[0], input[1]))
}

let sortedArr = arr.sorted {
  if $0.1 == $1.1 {
    return $0.0 < $1.0
  } else {
    return $0.1 < $1.1
  }
}
var end = 0
var count = 0

for i in sortedArr {
  if end <= i.0 {
    count += 1
    end = i.1
  }
}

print(count)


/// 1. 최대한 빨리 끝나는 순으로 정렬
/// 2. 만얀 같이 끝나는 시간이 같으면 먼저 끝나는 순으로 정렬

