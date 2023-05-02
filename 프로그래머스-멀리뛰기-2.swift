//
//  프로그래머스-멀리뛰기-2.swift
//  
//
//  Created by KoJeongseok on 2023/05/02.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12914

// 다이나믹 프로그래밍 (피보나치 수열 알고리즘 활용)

func solution(_ n:Int) -> Int {
    var arr = [0, 1, 2]

    if n <= 2 { return n }
    for i in 3...n {
        arr.append((arr[i - 1] + arr[i - 2]) % 1234567)
    }
    return arr[n]
}
