//
//  백준-1078-소수 찾기.swift
//  
//
//  Created by KoJeongseok on 2023/02/20.
//  https://www.acmicpc.net/problem/1978

// isPrime 함수를 구현하여 각 요소들이 소수인지 확인하여 문제를 해결하였다.
// isPrime 함수는 1을 제외한 약수가 하나라도 있다면 false을 반환하도록 하였다.
// 약수를 확인하는 방법으로는 2부터 해당 숫자의 제곱근까지만 나누어 떨어지는지 확인하는 방법을 사용하였다.
import Foundation

let n = Int(readLine()!)!
let numbers = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var count = 0

for i in numbers {
  if isPrime(n: i) {
    count += 1
  }
}
print(count)


func isPrime(n: Int) -> Bool {
  if n == 1 { return false }
  if n == 2 || n == 3 { return true }
  let square = Int(sqrt(Double(n)))
  for i in 2...square {
    if n % i == 0 {
      return false
    }
  }
  return true
}
