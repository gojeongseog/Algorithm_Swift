//
//  백준-1105-그리디
//  
//
//  Created by KoJeongseok on 2023/04/05.
//  https://www.acmicpc.net/problem/1105

import Foundation

let input = readLine()!.components(separatedBy: " ").map { String($0) }
var l = input[0].map { String($0) }
var r = input[1].map { String($0) }
var answer = 0

if r.count != l.count {
  print(0)
} else {
  for i in 0..<l.count {
    if l[i] == r[i] {
      if l[i] == "8" { answer += 1 }
    } else {
      break
    }
  }
  print(answer)
}
