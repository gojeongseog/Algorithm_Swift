//
//  백준-7568-덩치-실버5.swift
//  
//
//  Created by KoJeongseok on 2023/06/15.
//  https://www.acmicpc.net/problem/7568

import Foundation

let n = Int(readLine()!)!
var bodies = [(Int, Int)]()

for _ in 0..<n {
  let bodyInfo = readLine()!.split(separator: " ").map { Int(String($0))! }
  bodies.append((bodyInfo[0], bodyInfo[1]))
}

for body in bodies {
  let record = bodies.filter { $0.0 > body.0 && $0.1 > body.1 }.count + 1
  print(record, terminator: " ")
}
