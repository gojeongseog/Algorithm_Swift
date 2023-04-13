//
//  백준-11724-BFS:DFS.swift
//  
//
//  Created by KoJeongseok on 2023/04/13.
//  https://www.acmicpc.net/problem/11724

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
var glaph = Array(repeating:[Int](), count: n + 1)
var check = Array(repeating:false, count: n + 1)
var answer = 0

for _ in 0..<m {
  let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
  glaph[input[0]].append(input[1])
  glaph[input[1]].append(input[0])
}

for i in 1...n {
  if check[i] { continue }
  answer += 1
  dfs(i)
}

func dfs(_ node: Int) {
  var stack = [node]

  while !stack.isEmpty {
    let node = stack.removeLast()
    if check[node] { continue }
    check[node] = true
    stack += glaph[node]
  }
}

print(answer)
