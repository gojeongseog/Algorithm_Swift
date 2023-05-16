//
//  백준-1789-그리디.swift
//  
//
//  Created by KoJeongseok on 2023/04/27.
//  https://www.acmicpc.net/problem/1789

import Foundation
var n = Int(readLine()!)!
var num = 0
var result = 0

while n > result {
  num += 1
  result += num
}

print(result > n ? num - 1 : num)
