//
//  백준-1931-그리디.swift
//  
//
//  Created by KoJeongseok on 2023/04/26.
//  https://www.acmicpc.net/problem/1931

import Foundation
let k = Int(readLine()!)!
var arr: [(Int, Int)] = []

for _ in 0..<k {
  let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
  arr.append((input[0], input[1]))
}

let sortedArr = arr.sorted {
  if $0.1 == $1.1 {
    return $0.0 < $1.0
  } else {
    return $0.1 < $1.1
  }
}
var end = 0
var count = 0

for i in sortedArr {
  if end <= i.0 {
    count += 1
    end = i.1
  }
}

print(count)


/// 1. 최대한 빨리 끝나는 순으로 정렬
/// 2. 만얀 같이 끝나는 시간이 같으면 먼저 끝나는 순으로 정렬
/// 2번 조건이 왜 필요할까? 끝나는 시간만 빠르면 상관없지 않을까?
/// 이유: 가장 빨리 끝나는 시간이 (1-4)이다 그래서 end 에 4가 할당된 상태
/// 그 다음으로 빨리 끝나는 회의시간은 8 해당하는 회의들은
/// (5-8), (1-8),(4-8) 이 있다고 하자
/// 당연히 1-8의 1은 end보다 작아서 조건에 맞지 않는다.
/// 그러면 나머지 두개를 보자
/// 당연히 5-8보다 4-8이 적합 해 보인다.
/// 하지만 이 둘 중 무엇을 골라도 결과에 지장을 주지 않는다.
/// 그러면 왜 2조건이 필요할까?
/// 바로 시작시간과 끝나는 시간이 동일한 케이스가 있기 때문이다.
/// (8-8)을 추가 해보자
/// (4-8)이나 (5-8) 두개중 하나를 먼저 고른다면 (8-8)을 추가로 할당 가능하다
/// 하지만 (8-8)을 먼저 할당했다면 (4-5)나 (5-8)을 추가할당 불가하다
/// 결국 가능한 최대 횟수가 나오지 않는 케이스가 발생한다.
/// 그래서 2번의 조건이 필요한 것이다.

