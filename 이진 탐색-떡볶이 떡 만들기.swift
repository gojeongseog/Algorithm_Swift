//
//  이진 탐색-떡볶이 떡 만들기.swift
//  
//
//  Created by KoJeongseok on 2023/02/17.


// 가장 긴 떡볶이 떡을 기준으로 시작점 끝점 중간점을 적용하여 이진탐색 하여 해결

import Foundation

var nm = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var (n, m) = (nm[0], nm[1])

var riceCakes = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var long = riceCakes.max()!
print(binary(long: long, target: m))

func binary(long: Int, target: Int) -> Int {
  var start = 1
  var end = long

  while start <= end {
    let mid = (start + end) / 2
    var length = 0

    for i in riceCakes {
      if i > mid {
        length += i - mid
      }
    }
    if length == target {
      return mid
    } else if length > target {
      start = mid + 1
    } else {
      end = mid - 1
    }
  }
  return -1
}
