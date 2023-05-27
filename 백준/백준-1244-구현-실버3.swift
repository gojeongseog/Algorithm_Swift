//
//  백준-1244-구현-실버3.swift
//  
//
//  Created by KoJeongseok on 2023/05/28.
//  https://www.acmicpc.net/problem/1244

import Foundation

let switchNum = Int(readLine()!)!
var switches = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let studentNum = Int(readLine()!)!
var students: [(gender: Int, number: Int)] = []

for _ in 0..<studentNum {
  let student = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
  students.append((gender: student[0], number: student[1]))
}

for student in students {
  let gender = student.gender
  var number = student.number
  if gender == 1 {
    // 남자
    for idx in 0..<switchNum {
      if (idx + 1) % number == 0 {
        switches[idx] = abs(switches[idx] - 1)
      }
    }
  } else {
    // 여자
    number -= 1
    var left = number - 1
    var right = number + 1
    switches[number] = abs(switches[number] - 1)

    while true {
      if left < 0 || right >= switchNum || switches[left] != switches[right] {
        break
      }
      switches[left] = abs(switches[left] - 1)
      switches[right] = switches[left]
      left -= 1
      right += 1
    }
  }
}

for num in 0..<switchNum {
  print(switches[num], terminator: " ")
  if (num + 1) % 20 == 0 {
    print("")
  }
}
