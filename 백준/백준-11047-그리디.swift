//
//  백준-11047-그리디.swift
//  
//
//  Created by KoJeongseok on 2023/04/10.
//  https://www.acmicpc.net/problem/11047

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let n = input[0]
var k = input[1]
var coins = [Int]()
var answer = 0

for _ in 0..<n {
  coins.append(Int(readLine()!)!)
}

while k != 0 {
    answer += k / coins.last!
    k %= coins.last!
    coins.removeLast()
}

print(answer)
