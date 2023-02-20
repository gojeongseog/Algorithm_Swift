//
//  백준-1920-수 찾기.swift
//  
//
//  Created by KoJeongseok on 2023/02/12.
//  https://www.acmicpc.net/problem/1920

// 기본적인 이진탐색으로 문제를 해결함

import Foundation

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map { Int(String($0))! }.sorted()
let m = Int(readLine()!)!
let b = readLine()!.components(separatedBy: " ").map { Int(String($0))! }


for i in b {
  print(search(num: i))
}

func search(num: Int) -> Int {
  var start = 0
  var end = a.count - 1

  while start <= end {
    let mid = (start + end) / 2
    if a[mid] == num { return 1 }
    if a[mid] > num {
      end = mid - 1
    } else {
      start = mid + 1
    }
  }
  return 0
}
