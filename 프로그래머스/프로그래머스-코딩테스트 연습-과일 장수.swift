//
//  프로그래머스-코딩테스트 연습-과일 장수.swift
//  
//
//  Created by KoJeongseok on 2023/02/17.
//  https://school.programmers.co.kr/learn/courses/30/lessons/135808

import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var sort = score.sorted(by: >)
    var n = m - 1
    var result = 0

    while n < sort.count {
        result += sort[n] * m
        n += m
    }
    return result
}


