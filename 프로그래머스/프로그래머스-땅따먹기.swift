//
//  프로그래머스-땅따먹기.swift
//  
//
//  Created by KoJeongseok on 2023/03/30.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12913/solution_groups?language=swift&type=my

import Foundation

func solution(_ land:[[Int]]) -> Int{
    var last = land.count - 1
    var land = land
    for i in 1...last {
        land[i][0] += [land[i - 1][1], land[i - 1][2], land[i - 1][3]].max()!
        land[i][1] += [land[i - 1][0], land[i - 1][2], land[i - 1][3]].max()!
        land[i][2] += [land[i - 1][0], land[i - 1][1], land[i - 1][3]].max()!
        land[i][3] += [land[i - 1][0], land[i - 1][1], land[i - 1][2]].max()!
    }
    return land[last].max()!
}
