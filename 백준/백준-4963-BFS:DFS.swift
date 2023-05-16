//
//  백준-4963-BFS:DFS.swift
//  
//
//  Created by KoJeongseok on 2023/04/10.
//  https://www.acmicpc.net/problem/4963

import Foundation

let dx = [0, 1, 1, 1, 0, -1, -1, -1]
let dy = [1, 1, 0, -1, -1, -1, 0, 1]


while true {
  let size = readLine()!.components(separatedBy: " ").map { Int($0)! }
  let w = size[0]
  let h = size[1]
  if w == 0 && h == 0 { break }

  var map = [[Int]]()
  var answer = 0

  func bfs( _ i: Int, _ j: Int) {
    if map[i][j] != 1 { return }
    map[i][j] = 0

    for n in 0..<8 {
      let nx = i + dx[n]
      let ny = j + dy[n]
      if nx < 0 || nx >= h || ny < 0 || ny >= w { continue }
      bfs(nx, ny)
    }
  }



  for _ in 0..<h {
    let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
    map.append(input)
  }

  for i in 0..<h {
    for j in 0..<w {
      if map[i][j] == 1 {
        bfs(i, j)
        answer += 1
      }
    }
  }
  print(answer)
}
