//
//  정렬-두 배열의 원소 교체.swift
//  
//
//  Created by KoJeongseok on 2023/02/13.
//  https://school.programmers.co.kr/learn/courses/30/lessons/136798

//


import Foundation

let nk = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, k) = (nk[0], nk[1])

var a = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted()
var b = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted(by: >)

for _ in 0..<k {
  if a[0] > b[0] { break }
  let aMin = a.removeFirst()
  let bMax = b.removeFirst()
  a.append(bMax)
}

print(a.reduce(0, +))

// 서로 다른 배열의 교환하는 더 좋은 방법이 있었음

import Foundation

let nk = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, k) = (nk[0], nk[1])

var a = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted()
var b = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted(by: >)

for i in 0..<k {
  if a[i] > b[i] { break }
  (a[i], b[i]) = (b[i], a[i]) // good
}

print(a.reduce(0, +))
