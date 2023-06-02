//
//  프로그래머스-옹알이2-lv1.swift
//  
//
//  Created by KoJeongseok on 2023/06/03.
//  https://school.programmers.co.kr/learn/courses/30/lessons/133499

import Foundation

func check(babbling: String) -> Bool {
    var babbling = babbling
    let ables = ["aya", "ye", "woo", "ma"]
    let unables = ["ayaaya", "yeye", "woowoo", "mama"]

    for unable in unables {
        if babbling.contains(unable) { return false }
    }

    for able in ables {
        if babbling == "" { return true }
        babbling = babbling.replacingOccurrences(of: able, with: "x")
    }
    babbling = babbling.replacingOccurrences(of: "x", with: "")
    return babbling == "" ? true : false
}

func solution(_ babbling:[String]) -> Int {
    babbling.filter { check(babbling: $0) }.count
}
