//
//  백준-2468-BFS:DFS.swift
//  
//
//  Created by KoJeongseok on 2023/04/14.
//  https://www.acmicpc.net/problem/2468

import Foundation

let n = Int(readLine()!)!
var map = [[Int]]()
var newMap = [[Int]]()
var min = 100
var max = 0
var count = 0
var answer = 0

var dx = [0, 1, 0, -1]
var dy = [1, 0, -1, 0]

for _ in 0..<n {
  let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
  min = min < input.min()! ? min : input.min()!
  max = max > input.max()! ? max : input.max()!
  map.append(input)
}

for h in min...max {
  newMap = map
  for i in 0..<n {
    for j in 0..<n {
      if newMap[i][j] > h {
        bfs(i, j, h)
        count += 1
      }
    }
  }
  answer = answer > count ? answer : count
  count = 0
}

print(answer == 0 ? 1 : answer)


func bfs(_ x: Int, _ y: Int, _ h: Int) {
  if newMap[x][y] <= h { return }
  newMap[x][y] = h

  for num in 0...3 {
    let nx = x + dx[num]
    let ny = y + dy[num]
    if nx < 0 || nx >= n || ny < 0 || ny >= n || newMap[nx][ny] <= h { continue }
    bfs(nx, ny, h)
  }
}
