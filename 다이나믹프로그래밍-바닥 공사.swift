//
//  프로그래머스-연습문제-무인도 여행.swift
//  
//
//  Created by KoJeongseok on 2023/03/21.
//  https://school.programmers.co.kr/learn/courses/30/lessons/154540



import Foundation

func solution(_ maps:[String]) -> [Int] {
    var newMaps = maps.map { $0.map { String($0) } }
    let n = newMaps.count
    let m = newMaps[0].count
    var resultArr = [Int]()

    func bfs(_ x: Int, _ y: Int) -> Int {
        var result: Int = 0

        if x < 0 || x >= n || y < 0 || y >= m { return 0 }
        if newMaps[x][y] != "X" {
            result += Int(newMaps[x][y])!
            newMaps[x][y] = "X"
            result += bfs(x + 1, y)
            result += bfs(x, y + 1)
            result += bfs(x - 1, y)
            result += bfs(x, y - 1)
        }
        return result
    }

    for i in 0..<n {
        for j in 0..<m {
            if newMaps[i][j] != "X" {
                resultArr.append(bfs(i, j))
            }
        }
    }
    return resultArr.isEmpty ? [-1] : resultArr.sorted()
}




