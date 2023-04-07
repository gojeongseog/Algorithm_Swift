//
//  백준-1541-그리디.swift
//  
//
//  Created by KoJeongseok on 2023/04/07.
//  https://www.acmicpc.net/problem/1541

import Foundation

let input = readLine()!

var current: String = ""
var num: Int = 0
var isMinus: Bool = false

for n in input {
  if n == "-" || n == "+"{
    if isMinus {
      num -= Int(current)!
      current = ""
    } else {
      num += Int(current)!
      current = ""
    }
    if n == "-" {
      isMinus = true
    }

  } else {
    current += String(n)
  }
}
print(isMinus ? num - Int(current)! : num + Int(current)!)
