//
//  백준-13305-그리디.swift
//  
//
//  Created by KoJeongseok on 2023/04/07.
//  https://www.acmicpc.net/problem/13305

import Foundation

let num = Int(readLine()!)!
let distances = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let prices = readLine()!.components(separatedBy: " ").map { Int(String($0))! }

var minPrice = prices.first!
var answer = minPrice * distances.first!

for n in 1..<num - 1 {
  minPrice = minPrice < prices[n] ? minPrice : prices[n]
  answer += minPrice * distances[n]
}

print(answer)
