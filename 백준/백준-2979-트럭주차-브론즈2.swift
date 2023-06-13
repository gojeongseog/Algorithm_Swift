//
//  백준-2979-트럭주차-브론즈2.swift
//  
//
//  Created by KoJeongseok on 2023/06/14.
//  https://www.acmicpc.net/problem/2979

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let (a, b, c) = (input[0], input[1] * 2, input[2] * 3)
var counts = [Int: Int]()
var answer = 0

for _ in 0..<3 {
    let times = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
    (times[0]..<times[1]).forEach { counts[$0, default: 0] += 1 }
}

for count in counts {
    let currentCount = count.value
    switch currentCount {
        case 1: answer += a
        case 2: answer += b
        case 3: answer += c
        default: continue
    }
}
print(answer)
