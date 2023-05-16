//
//  백준-1052-그리디.swift
//  
//
//  Created by KoJeongseok on 2023/04/04.
//  https://www.acmicpc.net/problem/1052

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var n = input[0]
let k = input[1]
var l = 1
var arr = [Int]()
var answer = 0

while n > 1 {
  if n % 2 != 0 { arr.append(l) }
  n /= 2
  l *= 2
}
arr.append(l)


while arr.count > k {
  if arr[0] == arr[1] {
    arr[1] *= 2
    arr.removeFirst()
    continue
  } else {
    let need = arr[1] - arr[0]
    answer += need
    arr[0] += need
  }
}
print(answer)
