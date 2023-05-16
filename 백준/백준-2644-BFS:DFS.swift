//
//  백준-2644-BFS:DFS.swift
//  
//
//  Created by KoJeongseok on 2023/04/26.
//  https://www.acmicpc.net/problem/2644

import Foundation

let n = Int(readLine()!)!

let line = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let start = line[0]
let end = line[1]
let m = Int(readLine()!)!

var arr = Array(repeating: [Int](), count: n + 1)
var check = Array(repeating: false, count: n + 1)

for _ in 0..<m {
  let line = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
  arr[line[0]].append(line[1])
  arr[line[1]].append(line[0])
}

print(bfs(node: start, count: 0))

func bfs(node: Int, count: Int) -> Int {
  if node == end { return count }
  check[node] = true

  for num in arr[node] {
    if check[num] { continue }
    let cnt = bfs(node: num, count: count + 1)
    if cnt != -1 { return cnt }
  }
  return -1
}
