//
//  백준-14503-로봇 청소기-골드5.swift
//  
//
//  Created by KoJeongseok on 2023/06/27.
//  https://www.acmicpc.net/problem/14503

// 분명 문제에서는 반시계 방향으로 회전하라고 표현했는데 시계방향으로 설정해야 통과된다

import Foundation

let d: [(Int, Int)] = [(-1, 0), (0, 1), (1, 0), (0, -1)]
let inputs = readLine()!.components(separatedBy: " ").map {Int($0)!}
let (n, m) = (inputs[0], inputs[1])
var robot = readLine()!.components(separatedBy: " ").map { Int($0)! }
var map = [[Int]]()

for _ in 0..<n {
    let row = readLine()!.components(separatedBy: " ").map {Int($0)!}
    map.append(row)
}

var robotDirection = robot[2]
var cleaned = 0

while true {
    let (x, y) = (robot[0], robot[1])

    if map[x][y] == 0 {
        cleaned += 1
        map[x][y] = 2
    }

    var canClean: Bool = false
    for _ in 0..<4 {
        robotDirection = (robotDirection + 3) % 4
        let (dx, dy) = d[robotDirection]
        let (nx, ny) = (x + dx, y + dy)

        if nx >= 0 && nx < n && ny >= 0 && ny < m && map[nx][ny] == 0 {
            robot = [nx, ny, robotDirection]
            canClean = true
            break
        }
    }

    if !canClean {
        let (dx, dy) = d[robotDirection]
        let (bx, by) = (x - dx, y - dy)
        if bx >= 0 && bx < n && by >= 0 && by < m && map[bx][by] != 1 {
            robot = [bx, by, robotDirection]
        } else {
            break
        }
    }
}
print(cleaned)
