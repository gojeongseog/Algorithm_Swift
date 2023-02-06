//
//  BFS-미로 탈출.swift
//  
//
//  Created by KoJeongseok on 2023/02/05.
//
// 이것이 코딩테스트다 BFS 문제

import Foundation

let nm = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let n = nm[0]
let m = nm[1]

let dx: [Int] = [0, 1, 0, -1]
let dy: [Int] = [1, 0, -1, 0]

var glaph = [[Int]]()


for _ in 0..<n {
  let line = readLine()!.map { Int(String($0))! }
  glaph.append(line)
}

print(bfs(0, 0))

func bfs(_ x: Int, _ y: Int) -> Int {
  var queue: [(Int, Int)] = [(x, y)]

  while !queue.isEmpty {
    let (x, y) = queue.removeFirst()

    for i in 0...3 {
      let nx = x + dx[i]
      let ny = y + dy[i]
      if nx <= -1 || nx >= n || ny <= -1 || ny >= m { continue }
      if glaph[nx][ny] == 1 {
        glaph[nx][ny] = glaph[x][y] + 1
        queue.append((nx, ny))
      }
    }
  }
  return glaph[n - 1][m - 1]
}
