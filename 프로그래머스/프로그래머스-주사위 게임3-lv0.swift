//
//  프로그래머스-주사위 게임3-lv0.swift
//  
//
//  Created by KoJeongseok on 2023/05/21.
//  https://school.programmers.co.kr/learn/courses/30/lessons/181916

import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    var counts: [Int: Int] = [:]

    for number in [a, b, c, d] {
        counts[number, default: 0] += 1
    }

    var sortedCounts = counts.sorted { $0.value > $1.value }
    let highestCount = sortedCounts.first!.value
    var firstNum = sortedCounts.first!.key
    let lastNum = sortedCounts.last!.key
    let count = sortedCounts.count

    switch highestCount {
    case 4:
        return firstNum * 1111
    case 3:
        return (10 * firstNum + lastNum) * (10 * firstNum + lastNum)
    case 2 where count == 2:
        return (firstNum + lastNum) * abs(firstNum - lastNum)
    case 2:
        sortedCounts.removeFirst()
        let newFirstNum = sortedCounts.first!.key
        return newFirstNum * lastNum
    default:
        return sortedCounts.sorted { $0.key < $1.key}.first!.key
    }
}
