//
//  프로그래머스-N개의 최소공배수-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/17.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12953


/// allSatisfy 함수를 사용하여 간편하게 풀 수 있다.
/// allSatisfy 함수는 배열 요소들이 모두 조건에 맞아야 true이다.
/// 각 요소들이 배열의 가장 큰수를 나머지 없이 나누는게 가능하면 해당 수가 최소 공배수가 된다.

import Foundation

func solution(_ arr:[Int]) -> Int {
    var max = arr.max()!
    while true {
        if arr.allSatisfy { max % $0 == 0 } {
            return max
        }
        max += arr.max()!
    }
}
