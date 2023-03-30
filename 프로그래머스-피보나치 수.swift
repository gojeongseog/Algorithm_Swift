//
//  프로그래머스-피보나치 수.swift
//  
//
//  Created by KoJeongseok on 2023/03/30.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12945


// 일반적인 피보나치 문제와 다르지 않음 -> DP사용
// 하지만 n의 크기가 늘어나며 결과값이 기하급수적으로 늘어남
// 최종 결과를 1234567의 나머지를 계산하면 안됨
// 반복문 실행시 마다 1234567의 나머지를 계산해줘야함

import Foundation

func solution(_ n:Int) -> Int {
    var d: [Int] = [0, 1]
    if n <= 1 { return n }
    for i in 2...n {
        d.append((d[i - 1] + d[i - 2]) % 1234567)
    }
    return d[n]
}
