//
//  프로그래머스-예상 대진표-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/18.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12985

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var answer = 0
    var a = a
    var b = b
    while a != b {
        a = a % 2 == 0 ? a / 2 : a / 2 + 1
        b = b % 2 == 0 ? b / 2 : b / 2 + 1
        answer += 1
    }
    return answer
}
