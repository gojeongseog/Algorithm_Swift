//
//  프로그래머스-연습문제-명예의 전당(1).swift
//  
//
//  Created by KoJeongseok on 2022/11/27.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/138477

import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var count = 0
    var newScore = [Int]()
    var result = [Int]()

    for s in score {
        if count >= k - 1{
            newScore.append(s)
            newScore.sort(by: >)
            result.append(newScore[k - 1])
        } else {
            newScore.append(s)
            newScore.sort(by: >)
            result.append(newScore[count])
        }
        count += 1
    }
    return result
}
