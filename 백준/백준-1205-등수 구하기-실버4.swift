//
//  백준-1205-등수 구하기-실버4.swift
//  ex
//
//  Created by KoJeongseok on 2023/06/15.
//  https://www.acmicpc.net/problem/1205

import Foundation

let lankInfo = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let (n, myScore, p) = (lankInfo[0], lankInfo[1], lankInfo[2])

var scores = [Int]()
if n > 0 {
    scores = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
}

if scores.isEmpty || myScore > scores[0] {
    print(1)
} else if n == p && scores.last! >= myScore {
    print(-1)
} else {
    var lank = 1
    for score in scores {
        if score > myScore {
            lank += 1
        } else {
            break
        }
    }
    print(lank)
}
