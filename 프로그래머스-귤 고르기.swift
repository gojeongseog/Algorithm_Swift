//
//  프로그래머스-귤 고르기.swift
//  
//
//  Created by KoJeongseok on 2023/03/27.
//  https://school.programmers.co.kr/learn/courses/30/lessons/138476

import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var countDic = [Int: Int]()
    var currentK = k
    var result = 0

    for i in tangerine {
        if countDic[i] == nil {
            countDic[i] = 1
        } else {
            countDic[i]! += 1
        }
    }
    let sortedCountDic = countDic.sorted { $0.1 > $1.1 }
    for c in sortedCountDic {
        currentK -= c.value
        result += 1
        if currentK <= 0 { return result }
    }
    return result
}
