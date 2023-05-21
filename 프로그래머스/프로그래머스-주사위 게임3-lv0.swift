//
//  프로그래머스-주사위 게임3-lv0.swift
//  
//
//  Created by KoJeongseok on 2023/05/21.
//

import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    var counts: [Int: Int] = [:]
    var result = 0

    for number in [a, b, c, d] {
        if counts[number] != nil {
            counts[number]! += 1
        } else {
            counts[number] = 1
        }
    }

    var sortedCounts = counts.sorted { $0.value > $1.value }
    let first = sortedCounts.first!.value
    var firstNum = sortedCounts.first!.key
    let lastNum = sortedCounts.last!.key
    let count = sortedCounts.count

    if first == 4 {
        // 모두 같음
        result = firstNum * 1111
    } else if first == 3 {
        // 세 개 같음
        result = (10 * firstNum + lastNum) * (10 * firstNum + lastNum)
    } else if first == 2 && count == 2 {
        // 두 개씩 같음
        result = (firstNum + lastNum) * Int((firstNum - lastNum).magnitude)
    } else if first == 2 {
        // 두 개같고 하나 다름
        sortedCounts.removeFirst()
        firstNum = sortedCounts.first!.key
        result = firstNum * lastNum
    } else {
        // 모두 다름
        result = sortedCounts.sorted { $0.key < $1.key}.first!.key
    }
    return result
}
