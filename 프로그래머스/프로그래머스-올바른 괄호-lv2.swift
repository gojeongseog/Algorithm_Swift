//
//  프로그래머스-올바른 괄호-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/09.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12909

import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var count: Int = 0
    if String(s.first!) == ")" { return false }
    for str in s {
        if count < 0 { return false }
        if str == "(" {
            count += 1
        } else {
            count -= 1
        }
    }
    return count == 0
}
