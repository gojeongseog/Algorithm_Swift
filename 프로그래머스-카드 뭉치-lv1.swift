//
//  프로그래머스-카드 뭉치-lv1.swift
//  
//
//  Created by KoJeongseok on 2023/05/14.
//  https://school.programmers.co.kr/learn/courses/30/lessons/159994

import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = cards1
    var cards2 = cards2
    for g in goal {
        if cards1.isEmpty == false && cards1.first! == g {
            cards1.removeFirst()
            continue
        } else if cards2.isEmpty == false && cards2.first! == g {
            cards2.removeFirst()
            continue
        } else {
            return "No"
        }
    }
    return "Yes"
}
