//
//  백준-2217-그리디.swift
//  
//
//  Created by KoJeongseok on 2023/04/26.
//  https://www.acmicpc.net/problem/2217

var cnt = Int(readLine()!)!
var arr: [Int] = []
var answer = 0

for _ in 0..<cnt {
  arr.append(Int(readLine()!)!)
}

for i in arr.sorted() {
  answer = answer > i * cnt ? answer : i * cnt
  cnt -= 1
}
print(answer)
