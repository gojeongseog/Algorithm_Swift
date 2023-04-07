//
//  백준-2667-BFS:DFS.swift
//  
//
//  Created by KoJeongseok on 2023/04/08.
//  https://www.acmicpc.net/problem/2667

import Foundation

let n = Int(readLine()!)!
var graph = [[Int]]()
var count = 0
var arr = [Int]()

for _ in 0..<n {
  let input = readLine()!.map { Int(String($0))! }
  graph.append(input)
}

for i in 0..<n {
  for j in 0..<n {
    if graph[i][j] == 1 {
      count += 1
      arr.append(bfs(i, j))
    }
  }
}

print(count)
for n in arr.sorted() {
  print(n)
}

func bfs(_ i: Int, _ j: Int) -> Int {
  if i < 0 || i >= n || j < 0 || j >= n { return 0 }
  if graph[i][j] != 1 { return 0 }
  graph[i][j] = 0
  var num = 1
  num += bfs(i + 1, j)
  num += bfs(i - 1, j)
  num += bfs(i, j + 1)
  num += bfs(i, j - 1)
  return num
}


