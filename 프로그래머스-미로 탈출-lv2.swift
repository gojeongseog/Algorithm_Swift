//
//  프로그래머스-미로 탈출-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/17.
//  https://school.programmers.co.kr/learn/courses/30/lessons/159993


// BFS 알고리즘을 이용하여 해결
import Foundation

let dx = [0, 1, 0, -1]
let dy = [1, 0, -1, 0]

func solution(_ maps:[String]) -> Int {
    let maps = maps.map { $0.map { String($0) } }
    let n = maps.count
    let m = maps[0].count
    var start = (0, 0), end = (0, 0), lever = (0, 0)

    for i in 0..<n {
        for j in 0..<m {
            if maps[i][j] == "X" {
                continue
            } else if maps[i][j] == "S" {
                start = (i, j)
            } else if maps[i][j] == "E" {
                end = (i, j)
            } else if maps[i][j] == "L"{
                lever = (i, j)
            }
        }
    }

    let d1 = bfs(start, lever, maps, n, m)
    let d2 = bfs(lever, end, maps, n, m)
    if d1 == -1 || d2 == -1 {
        return -1
    }
    return d1 + d2
}

func bfs(_ start: (Int, Int), _ end: (Int, Int), _ maps: [[String]], _ n: Int, _ m: Int) -> Int {
    var queue = [(Int, Int)]()
    var dist = [[Int]](repeating: [Int](repeating: -1, count: m), count: n)
    queue.append(start)
    dist[start.0][start.1] = 0

    while queue.isEmpty == false {
        let (x, y) = queue.removeFirst()
        for idx in 0..<4 {
            let nx = x + dx[idx]
            let ny = y + dy[idx]
            if nx >= 0 && nx < n && ny >= 0 && ny < m && dist[nx][ny] == -1 && maps[nx][ny] != "X" {
                dist[nx][ny] = dist[x][y] + 1
                if (nx, ny) == end {
                    return dist[nx][ny]
                }
                queue.append((nx, ny))
            }
        }
    }
    return -1
}
