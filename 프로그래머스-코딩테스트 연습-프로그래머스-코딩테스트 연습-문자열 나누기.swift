//
//  프로그래머스-코딩테스트 연습-문자열 나누기.swift
//  
//
//  Created by KoJeongseok on 2023/02/17.
//  https://school.programmers.co.kr/learn/courses/30/lessons/140108

import Foundation

func solution(_ s:String) -> Int {
    var s = s.map { String($0) }
    var x = ""
    var equal = 0
    var other = 0
    var count = 0

    for i in s {
        if x == "" {
            x = i
            equal += 1
            continue
        } else {
            if x == i {
                equal += 1
            } else {
                other += 1
            }
        }
        if equal == other {
            count += 1
            x = ""
            equal = 0
            other = 0
        }

    }
    return equal + other == 0 ? count : count + 1
}
