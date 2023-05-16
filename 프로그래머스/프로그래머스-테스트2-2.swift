//
//  프로그래머스-테스트2-2.swift
//  
//
//  Created by KoJeongseok on 2023/04/10.
//

import Foundation

let input = readLine()!

var str = input.map { String($0) }
var answer = 0

for _ in 0..<str.count-1 {
  var check = [String]()
  for char in str {
    if char == "(" {
      check.append("(")
    } else if char == "{" {
      check.append("{")
    } else if char == "[" {
      check.append("[")
    } else if char == ")" {
      if check.isEmpty || check.last! != "(" {
        check.append("x")
        break
      }
      check.removeLast()
    } else if char == "}" {
      if check.isEmpty || check.last! != "{" {
        check.append("x")
        break
      }
      check.removeLast()
    } else {
      if check.isEmpty || check.last! != "[" {
        check.append("x")
        break
      }
      check.removeLast()
    }
  }
  if check.isEmpty {
    print(str)
    answer += 1
  }
  // 왼쪽으로 회전
  let first = str.removeFirst()
  str.append(first)
}
print(answer)
