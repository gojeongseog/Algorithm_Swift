//
//  백준-11725-BFS:DFS.swift
//  
//
//  Created by KoJeongseok on 2023/04/24.
//  https://www.acmicpc.net/problem/11725

import Foundation
let n = Int(readLine()!)!
var result = Array(repeating: 0, count: n + 1)
var graph = Array(repeating: [Int](), count: n + 1)


for _ in 0..<n - 1 {
  let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
  graph[input[0]].append(input[1])
  graph[input[1]].append(input[0])
}

bfs()

for n in result {
  if n == 0 { continue }
  print(n)
}

func bfs() {
  var queue = [1]
  while !queue.isEmpty {
    let node = queue.removeFirst()
    for n in graph[node] {
      if result[n] != 0 || n == 1 { continue }
      queue.append(n)
      result[n] = node
    }
  }
}
