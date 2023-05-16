//
//  백준-2583-BFS/DFS.swift
//  
//
//  Created by KoJeongseok on 2023/04/25.
//  https://www.acmicpc.net/problem/2583

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let (m, n, k) = (input[0], input[1], input[2])
var map = Array(repeating: Array(repeating: 1, count: m), count: n)

var resultArr = [Int]()
var result = ""
var count = 0

let dx = [0, 1, 0, -1]
let dy = [1, 0, -1, 0]

for _ in 0..<k {
  let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
  for i in 0..<input[2] - input[0] {
    for j in 0..<input[3] - input[1] {
      map[input[0] + i][input[1] + j] = 0
    }
  }
}



for i in 0..<n {
  for j in 0..<m {
    if map[i][j] == 0 { continue }
    bfs(i, j)
    resultArr.append(count)
    count = 0
  }
}

print(resultArr.count)
for s in resultArr.sorted() {
  result += "\(s) "
}
print(result)

func bfs(_ x: Int, _ y: Int) {
  map[x][y] = 0
  count += 1

  for num in 0..<4 {
    let nx = x + dx[num]
    let ny = y + dy[num]
    if nx < 0 || nx >= n || ny < 0 || ny >= m || map[nx][ny] == 0 { continue }
    bfs(nx ,ny)
  }
}

