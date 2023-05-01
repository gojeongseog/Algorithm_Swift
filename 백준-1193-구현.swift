//
//  백준-1193-구현.swift
//  
//
//  Created by KoJeongseok on 2023/05/01.
//  https://www.acmicpc.net/problem/1193

// 첫번째 방법
/// 1씩 증가하거나 -1 되는 조건이 번갈아가면서 일어나기때문에 isUp값을 바꿔주어 하나씩 계산
let x = Int(readLine()!)!
var num1 = 1
var num2 = 1
var n = 1
var isUp = true

while x > n {
  n += 1
  if isUp {
    if num1 == 1 {
      num2 += 1
      isUp = false
    } else {
      num1 -= 1
      num2 += 1
    }
  } else {
    if num2 == 1 {
      num1 += 1
      isUp = true
    } else {
      num1 += 1
      num2 -= 1
    }
  }
}

print("\(num1)/\(num2)")


// 2번재 방법
/// 1번 과정을 통해 몇번째 줄인지, 해당 줄의 몇번째 위치에 있는지 확인
/// 2번 과정을 통해 짝수면 밑으로, 홀수면 위로 (방향 확인)
///  위치와 해당줄 - 위치 + 1을 프린트
var x = Int(readLine()!)!
var i = 1

while x > i { // 1.
    x -= i
    i += 1
}

if i % 2 == 0 { // 2/
    print("\(x)/\(i - x + 1)") // 3.
} else {
    print("\(i - x + 1)/\(x)")

