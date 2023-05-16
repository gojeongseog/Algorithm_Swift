//
//  프로그래머스-행렬의 곱셈-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/15.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12949

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer: [[Int]] = Array(
        repeating: Array(
            repeating: 0,
            count: arr2[0].count),
        count: arr1.count)

    for i in 0..<arr1.count {
        for j in 0..<arr2[0].count {
            for k in 0..<arr1[0].count {
                answer[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }
    return answer
}
