//
//  백준-1260-BFS_DFS.swift
//  
//
//  Created by KoJeongseok on 2023/04/07.
//  https://www.acmicpc.net/problem/1260

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let (n, m, v) = (input[0], input[1], input[2])
var graph: [[Int]] = Array(repeating: [], count: n + 1)

for _ in 0..<m {
  let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
  graph[input[0]].append(input[1])
  graph[input[1]].append(input[0])
}

func dfs() {
  var check = [Int]()
  var stack = [v]

  while !stack.isEmpty {
    let node = stack.removeLast()
    if check.contains(node) { continue }
    check.append(node)
    stack += graph[node].sorted(by: >)
  }
  print(check.map { String($0) + " " }.joined())
}

func bfs() {
  var check = [Int]()
  var queue = [v]

  while !queue.isEmpty {
    let node = queue.removeFirst()
    if check.contains(node) { continue }
    check.append(node)
    queue += graph[node].sorted()
  }
  print(check.map { String($0) + " " }.joined())
}


dfs()
bfs()
