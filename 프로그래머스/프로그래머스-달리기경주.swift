//
//  프로그래머스-달리기경주.swift
//  
//
//  Created by KoJeongseok on 2023/04/28.
//  https://school.programmers.co.kr/learn/courses/30/lessons/178871

import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var dic = [String: Int]()
    var player = players

    for i in 0..<player.count {
        dic[player[i]] = i
    }

    for i in 0..<callings.count {
        let call = callings[i]
        let index = dic[call]!

        player[index] = player[index - 1]
        player[index - 1] = call
        dic[call]! -= 1
        dic[player[index]]! += 1
    }
    return player
}
