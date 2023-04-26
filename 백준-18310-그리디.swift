//
//  백준-18310-그리디.swift
//  
//
//  Created by KoJeongseok on 2023/04/27.
//  https://www.acmicpc.net/problem/18310

import Foundation
let n = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map { Int(String($0))! }.sorted()

if n % 2 == 0 {
  // 짝수
  print(arr[(n / 2) - 1])
} else {
  //홀수
  print(arr[n / 2])
}
