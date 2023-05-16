//
//  프로그래머스-추억 점수.swift
//  
//
//  Created by KoJeongseok on 2023/04/28.
//  https://school.programmers.co.kr/learn/courses/30/lessons/176963


import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var dic = [String: Int]()
    var result = [Int]()

    for i in 0..<name.count {
        dic[name[i]] = yearning[i]
    }

    for i in photo {
        var score = 0
        for j in i {
            score += dic[j] ?? 0
        }
        result.append(score)
    }
    return result
}
