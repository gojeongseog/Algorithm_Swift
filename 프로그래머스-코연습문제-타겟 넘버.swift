//
//  프로그래머스-코연습문제-타겟 넘버.swift
//  
//
//  Created by KoJeongseok on 2023/02/06.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/43165

import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var result = 0

    func dfs(index: Int, sum: Int) {
        if index == numbers.count {
            if sum == target { result += 1 }
            return
        }
        dfs(index: index + 1, sum: sum + numbers[index])
        dfs(index: index + 1, sum: sum - numbers[index])
    }
    dfs(index: 0, sum: 0)
    return result
}
