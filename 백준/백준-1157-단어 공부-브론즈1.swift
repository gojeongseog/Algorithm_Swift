//
//  백준-1157-단어 공부-브론즈1.swift
//  
//
//  Created by KoJeongseok on 2023/06/14.
//  https://www.acmicpc.net/problem/1157

// 단어의 길이가 1인 특이 케이스도 신경 써서 구현해야 함!

import Foundation

let str = readLine()!.uppercased().map { String($0) }
if str.count == 1 {
  print(str.first!)
} else {
  var strCounts = [String: Int]()
  str.forEach { strCounts[$0, default: 0] += 1 }
  let sortedStrCounts = strCounts.sorted { $0.value > $1.value }
  print(sortedStrCounts[0].value == sortedStrCounts[1].value ? "?" : sortedStrCounts[0].key)
}

