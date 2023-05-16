//
//  프로그래머스-체육복.swift
//  
//
//  Created by KoJeongseok on 2023/03/29.
//  https://school.programmers.co.kr/learn/courses/30/lessons/42862

// filter를 통해서 중복되는 요소들을 제거하기
// 조건문 ||(of) 를 통해 i - 1을 우선적으로 확인하기

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var currentLost = lost.filter { !reserve.contains($0) }.sorted()
    var currentreserve = reserve.filter { !lost.contains($0) }.sorted()
    var count = n - currentLost.count

    for i in currentLost {
        for j in currentreserve.indices {
            if currentreserve[j] == i - 1 || currentreserve[j] == i + 1 {
                currentreserve.remove(at: j)
                count += 1
                break
            }
        }
    }
    return count

}
