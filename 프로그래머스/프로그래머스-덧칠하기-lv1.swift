//
//  프로그래머스-덧칠하기-lv1.swift
//  
//
//  Created by KoJeongseok on 2023/05/14.
//  https://school.programmers.co.kr/learn/courses/30/lessons/161989

import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var pasable = 0
    var answer = 0

    for s in section {
        if s < pasable {
            continue
        }
        answer += 1
        pasable = s + m
    }
    return answer
}
