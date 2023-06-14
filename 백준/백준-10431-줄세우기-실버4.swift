//
//  백준-10431-줄세우기-실버4.swift
//  
//
//  Created by KoJeongseok on 2023/06/14.
//  https://www.acmicpc.net/problem/10431

import Foundation
let p = Int(readLine()!)!

for _ in 0..<p {
  let caseInfo = readLine()!.split(separator: " ").map { Int(String($0))! }
  let num = caseInfo[0]
  let heights = caseInfo[1...]

  var line = [Int]()
  var step = 0

  for height in heights {
    if let bigger = line.firstIndex(where: { $0 > height }) {
      line.insert(height, at: bigger)
      step += line.count - 1 - bigger
    } else {
      line.append(height)
    }
  }
  print(num, step)
}
