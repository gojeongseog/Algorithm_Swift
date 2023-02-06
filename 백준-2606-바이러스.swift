//
//  백준-2606-바이러스.swift
//  
//
//  Created by KoJeongseok on 2023/02/06.
//
// https://www.acmicpc.net/problem/2606

import Foundation

let computerNum = Int(readLine()!)!
let connectNum = Int(readLine()!)!

var glaph = Array(repeating: [Int](), count: computerNum + 1)

for _ in 0..<connectNum {
  let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
  glaph[input[0]].append(input[1])
  glaph[input[1]].append(input[0])
}
print(bfs(start: 1))

func bfs(start: Int) -> Int {
  var infected = [Int]()
  var queue = [start]

  while !queue.isEmpty {
    let node = queue.removeFirst()
    if infected.contains(node) { continue }
    infected.append(node)
    queue += glaph[node]
  }
  return infected.count - 1
}
