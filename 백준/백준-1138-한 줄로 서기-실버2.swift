//
//  백준-1138-한 줄로 서기-실버2.swift
//  
//
//  Created by KoJeongseok on 2023/06/20.
//  https://www.acmicpc.net/problem/1138

import Foundation
let num = Int(readLine()!)!
let info = readLine()!.split(separator: " ").map { Int(String($0))! }
var orderArr = Array(repeating: 0, count: num)
for (i, j) in info.enumerated() {
    let h = i + 1
    var bigger = j
    for n in 0...num {
        if bigger == 0 && orderArr[n] == 0 {
            orderArr[n] = h
            break
        }
        if orderArr[n] == 0 {
            bigger -= 1
        }
    }
}
var result = orderArr.map { String($0) + " " }.joined()
print(result)
