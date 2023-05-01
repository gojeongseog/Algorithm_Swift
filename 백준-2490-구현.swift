//
//  백준-2490-구현.swift
//  
//
//  Created by KoJeongseok on 2023/05/01.
//  https://www.acmicpc.net/problem/2490

import Foundation

// 첫번째 방법
// input의 합을 스위치문을 통해 리턴

import Foundation

let f = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let s = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let t = readLine()!.components(separatedBy: " ").map { Int(String($0))! }

func run(_ arr: [Int]) {
  let sum = arr.reduce(0, +)
  switch sum {
    case 1: print("C")
    case 2: print("B")
    case 3: print("A")
    case 4: print("E")
    default: print("D")
  }
}

run(f)
run(s)
run(t)

// 두번째 방법
// 스위치문 대신 배열의 인덱스로 사용 (훨씬 코드가 짧아짐)
for _ in 0..<3{print(["D", "C", "B", "A", "E"][readLine()!.components(separatedBy: " ").map{Int(String($0))!}.reduce(0,+)])}
