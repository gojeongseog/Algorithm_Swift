//
//  백준-1080-그리디.swift
//  
//
//  Created by KoJeongseok on 2023/04/04.
//  https://www.acmicpc.net/problem/1080

import Foundation

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
var a = [[Int]]()
var b = [[Int]]()
var count = 0


for num in 0..<n * 2 {
    let input = readLine()!.map { Int(String($0))! }
    if num >= n {
        b.append(input)
    } else {
        a.append(input)
    }
}



if n < 3 || m < 3 {
    print(a == b ? count : -1)
} else {
    for i in 0...n - 3 {
        for j in 0...m - 3 {
            if a[i][j] == b[i][j] { continue }
            conversion(i, j)
        }
    }

    func conversion(_ i: Int, _ j: Int) {
        count += 1
        for n in i..<i + 3 {
            for m in j..<j + 3 {
                a[n][m] = a[n][m] == 1 ? 0 : 1
            }
        }
    }

    print(a == b ? count : -1)
}

