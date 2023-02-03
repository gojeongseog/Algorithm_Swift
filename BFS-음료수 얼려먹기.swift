//
//  BFS-음료수 얼려먹기.swift
//  
//
//  Created by KoJeongseok on 2023/02/03.
//
// 이것이 코딩테스트다 BFS 문제

import Foundation

import Foundation
var nm = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var n = nm[0]
var m = nm[1]
var graph = [[Int]]()
var count: Int = 0

for _ in 0..<n {
  let line = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
  graph.append(line)
}

for x in 0..<n {
  for y in 0..<m {
    if graph[x][y] == 0 {
      bfs(x, y)
      count += 1
    }
  }
}

func bfs(_ x: Int, _ y: Int) {
  if x < 0 || x >= n || y < 0 || y >= m { return }
  if graph[x][y] == 0 {
    graph[x][y] = 1
    bfs(x, y + 1)
    bfs(x + 1, y)
    bfs(x, y - 1)
    bfs(x - 1, y)
  }
  return
}

print(count)
