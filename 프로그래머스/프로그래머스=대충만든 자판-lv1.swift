//
//  프로그래머스=대충만든 자판-lv1.swift
//  
//
//  Created by KoJeongseok on 2023/05/26.
//  https://school.programmers.co.kr/learn/courses/30/lessons/160586

import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var target = targets.map { $0.map { String($0) } }
    var keymap = keymap.map { $0.map { String($0) } }

    var result: [Int] = []

    for target in targets {
        var count = 0
        for str in target {
            var currentCount = 101
            for key in keymap {
                currentCount = min(currentCount, (key.firstIndex(of: String(str)) ?? 100) + 1)
            }
            if currentCount == 101 {
                count = -1
                break
            }
            count += currentCount
        }
        result.append(count)
    }
    return result
}
